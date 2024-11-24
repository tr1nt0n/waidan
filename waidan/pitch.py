import abjad
import baca
import evans
import trinton
from abjadext import rmakers
from abjadext import microtones
from itertools import cycle
from waidan import library

# piano and harp chords

chord_1_initial_pc_set = evans.Sequence([0, 10, 2, 9, 3, 5])

chord_2_initial_pc_set = evans.Sequence([1, 10, 3, 8, 7])

chord_1_alpha_category_1 = chord_1_initial_pc_set.alpha(category=1)

chord_1_alpha_category_2 = chord_1_initial_pc_set.alpha(category=2)

chord_2_alpha_category_1 = chord_2_initial_pc_set.alpha(category=1)

chord_2_alpha_category_2 = chord_2_initial_pc_set.alpha(category=2)

alpha_chords = [
    chord_1_alpha_category_1,
    chord_1_alpha_category_2,
    chord_2_alpha_category_1,
    chord_2_alpha_category_2,
]

helianthated_chords = baca.sequence.helianthate(alpha_chords, n=1, m=2)

final_section_chords_piano = []

for chord in helianthated_chords:
    partitioned_chord = abjad.sequence.partition_by_counts(
        sequence=chord, counts=[3, 3], cyclic=True, overhang=True
    )

    first_partition = partitioned_chord[0]

    second_partition = partitioned_chord[-1]

    first_partition_alpha = first_partition.alpha(category=2)

    second_partition_alpha = second_partition.alpha(category=1)

    for _ in first_partition_alpha:
        final_section_chords_piano.append(_)

    for _ in second_partition_alpha:
        final_section_chords_piano.append(_)

final_section_chords_piano = trinton.remove_adjacent(final_section_chords_piano)

final_section_chords_harp = []

new_piano_chords = final_section_chords_piano[:]

for pitch in new_piano_chords:
    if (
        pitch % 12 == 1
        or pitch % 12 == 2
        or pitch % 12 == 3
        or pitch % 12 == 5
        or pitch % 12 == 7
        or pitch % 12 == 8
        or pitch % 12 == 10
    ):
        final_section_chords_harp.append(pitch)

    if pitch % 12 == 0:
        final_section_chords_harp.append(1)

    if pitch % 12 == 4:
        final_section_chords_harp.append(3)

    if pitch % 12 == 6:
        final_section_chords_harp.append(5)

    if pitch % 12 == 9:
        final_section_chords_harp.append(8)

    if pitch % 12 == 11:
        final_section_chords_harp.append(10)

final_section_chords_harp = trinton.remove_adjacent(final_section_chords_harp)


def vertical_moment_pitching(voices, pitch_list):
    components = abjad.select.leaves(voices, pitched=True, grace=False)
    components.sort(key=lambda _: abjad.get.timespan(_).start_offset)

    for component, pitch in zip(components, pitch_list):
        component_index = components.index(component)
        next_component_index = component_index + 1
        next_component_index = next_component_index % len(components)
        next_component = components[next_component_index]
        previous_component = components[component_index - 1]

        component_start_offset = abjad.get.timespan(component).start_offset
        next_component_start_offset = abjad.get.timespan(next_component).start_offset
        previous_component_start_offset = abjad.get.timespan(
            previous_component
        ).start_offset

        handler = evans.PitchHandler([pitch])
        if (
            component_start_offset == next_component_start_offset
            and component_start_offset != previous_component_start_offset
        ):
            handler(component)
            handler(next_component)
        elif component_start_offset != previous_component_start_offset:
            handler(component)
