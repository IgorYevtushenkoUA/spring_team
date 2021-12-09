package com.example.faculty.database.dto.event;

import lombok.*;
import lombok.experimental.SuperBuilder;

import javax.validation.constraints.NotNull;
import java.sql.Timestamp;
import java.util.UUID;

@Data
@NoArgsConstructor
@AllArgsConstructor
@SuperBuilder
public class EventInfoDto {

    @NotNull
    private UUID id;

    @NotNull
    private String group;

    @NotNull
    private String name;

    @NotNull
    private String auditory;

    @NotNull
    private String subject;

    @NotNull
    private int hours;

    @NotNull
    private int minutes;

}