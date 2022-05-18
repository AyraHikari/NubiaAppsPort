.class Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;
.super Ljava/lang/Object;
.source "CalendarAppWidgetModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventInfo"
.end annotation


# instance fields
.field allDay:Z

.field color:I

.field end:J

.field id:J

.field selfAttendeeStatus:I

.field start:J

.field title:Ljava/lang/String;

.field visibTitle:I

.field visibWhen:I

.field visibWhere:I

.field when:Ljava/lang/String;

.field where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x8

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    .line 97
    iput v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    .line 98
    iput v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    .line 99
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    if-ne p0, p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v1

    .line 149
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 150
    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 152
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 153
    check-cast v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;

    .line 154
    .local v0, "other":Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;
    iget-wide v4, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->id:J

    iget-wide v6, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->id:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    .line 155
    goto :goto_0

    .line 156
    :cond_4
    iget-boolean v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    iget-boolean v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 157
    goto :goto_0

    .line 158
    :cond_5
    iget-wide v4, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->end:J

    iget-wide v6, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->end:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    move v1, v2

    .line 159
    goto :goto_0

    .line 160
    :cond_6
    iget-wide v4, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->start:J

    iget-wide v6, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->start:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7

    move v1, v2

    .line 161
    goto :goto_0

    .line 162
    :cond_7
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 163
    iget-object v3, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 164
    goto :goto_0

    .line 165
    :cond_8
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    iget-object v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 166
    goto :goto_0

    .line 167
    :cond_9
    iget v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    iget v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    if-eq v3, v4, :cond_a

    move v1, v2

    .line 168
    goto :goto_0

    .line 169
    :cond_a
    iget v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    iget v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    if-eq v3, v4, :cond_b

    move v1, v2

    .line 170
    goto :goto_0

    .line 171
    :cond_b
    iget v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    iget v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    if-eq v3, v4, :cond_c

    move v1, v2

    .line 172
    goto :goto_0

    .line 173
    :cond_c
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 174
    iget-object v3, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    if-eqz v3, :cond_e

    move v1, v2

    .line 175
    goto :goto_0

    .line 176
    :cond_d
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    iget-object v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    move v1, v2

    .line 177
    goto :goto_0

    .line 179
    :cond_e
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    if-nez v3, :cond_f

    .line 180
    iget-object v3, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    if-eqz v3, :cond_10

    move v1, v2

    .line 181
    goto/16 :goto_0

    .line 182
    :cond_f
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    iget-object v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    move v1, v2

    .line 183
    goto/16 :goto_0

    .line 185
    :cond_10
    iget v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->color:I

    iget v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->color:I

    if-eq v3, v4, :cond_11

    move v1, v2

    .line 186
    goto/16 :goto_0

    .line 188
    :cond_11
    iget v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->selfAttendeeStatus:I

    iget v4, v0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->selfAttendeeStatus:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 189
    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x0

    .line 128
    const/16 v0, 0x1f

    .line 129
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 130
    .local v1, "result":I
    iget-boolean v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 131
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->id:J

    iget-wide v6, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->id:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 132
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->end:J

    iget-wide v6, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->end:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 133
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->start:J

    iget-wide v6, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->start:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 134
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 135
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    add-int v1, v2, v4

    .line 136
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    add-int v1, v2, v4

    .line 137
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    add-int v1, v2, v4

    .line 138
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 139
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 140
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->color:I

    add-int v1, v2, v3

    .line 141
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->selfAttendeeStatus:I

    add-int v1, v2, v3

    .line 142
    return v1

    .line 130
    :cond_0
    const/16 v2, 0x4d5

    goto :goto_0

    .line 134
    :cond_1
    iget-object v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 138
    :cond_2
    iget-object v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 139
    :cond_3
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "EventInfo [visibTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, ", visibWhen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-wide v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, ", visibWhere="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, ", where="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "0x%x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->color:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, ", selfAttendeeStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetModel$EventInfo;->selfAttendeeStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
