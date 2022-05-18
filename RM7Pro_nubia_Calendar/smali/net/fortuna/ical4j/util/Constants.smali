.class public final Lnet/fortuna/ical4j/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static forProperty(Lnet/fortuna/ical4j/model/Property;)Lnet/fortuna/ical4j/model/Property;
    .locals 2
    .param p0, "property"    # Lnet/fortuna/ical4j/model/Property;

    .prologue
    .line 70
    move-object v0, p0

    .line 71
    .local v0, "retVal":Lnet/fortuna/ical4j/model/Property;
    sget-object v1, Lnet/fortuna/ical4j/model/property/Action;->AUDIO:Lnet/fortuna/ical4j/model/property/Action;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Action;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    sget-object v0, Lnet/fortuna/ical4j/model/property/Action;->AUDIO:Lnet/fortuna/ical4j/model/property/Action;

    .line 175
    :cond_0
    :goto_0
    return-object v0

    .line 74
    :cond_1
    sget-object v1, Lnet/fortuna/ical4j/model/property/Action;->DISPLAY:Lnet/fortuna/ical4j/model/property/Action;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Action;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    sget-object v0, Lnet/fortuna/ical4j/model/property/Action;->DISPLAY:Lnet/fortuna/ical4j/model/property/Action;

    goto :goto_0

    .line 77
    :cond_2
    sget-object v1, Lnet/fortuna/ical4j/model/property/Action;->EMAIL:Lnet/fortuna/ical4j/model/property/Action;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Action;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    sget-object v0, Lnet/fortuna/ical4j/model/property/Action;->EMAIL:Lnet/fortuna/ical4j/model/property/Action;

    goto :goto_0

    .line 80
    :cond_3
    sget-object v1, Lnet/fortuna/ical4j/model/property/Action;->PROCEDURE:Lnet/fortuna/ical4j/model/property/Action;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Action;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    sget-object v0, Lnet/fortuna/ical4j/model/property/Action;->PROCEDURE:Lnet/fortuna/ical4j/model/property/Action;

    goto :goto_0

    .line 83
    :cond_4
    sget-object v1, Lnet/fortuna/ical4j/model/property/CalScale;->GREGORIAN:Lnet/fortuna/ical4j/model/property/CalScale;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/CalScale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 84
    sget-object v0, Lnet/fortuna/ical4j/model/property/CalScale;->GREGORIAN:Lnet/fortuna/ical4j/model/property/CalScale;

    goto :goto_0

    .line 86
    :cond_5
    sget-object v1, Lnet/fortuna/ical4j/model/property/Clazz;->CONFIDENTIAL:Lnet/fortuna/ical4j/model/property/Clazz;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Clazz;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 87
    sget-object v0, Lnet/fortuna/ical4j/model/property/Clazz;->CONFIDENTIAL:Lnet/fortuna/ical4j/model/property/Clazz;

    goto :goto_0

    .line 89
    :cond_6
    sget-object v1, Lnet/fortuna/ical4j/model/property/Clazz;->PRIVATE:Lnet/fortuna/ical4j/model/property/Clazz;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Clazz;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 90
    sget-object v0, Lnet/fortuna/ical4j/model/property/Clazz;->PRIVATE:Lnet/fortuna/ical4j/model/property/Clazz;

    goto :goto_0

    .line 92
    :cond_7
    sget-object v1, Lnet/fortuna/ical4j/model/property/Clazz;->PUBLIC:Lnet/fortuna/ical4j/model/property/Clazz;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Clazz;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 93
    sget-object v0, Lnet/fortuna/ical4j/model/property/Clazz;->PUBLIC:Lnet/fortuna/ical4j/model/property/Clazz;

    goto :goto_0

    .line 95
    :cond_8
    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 96
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    goto :goto_0

    .line 98
    :cond_9
    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 99
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    goto :goto_0

    .line 101
    :cond_a
    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 102
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    goto :goto_0

    .line 104
    :cond_b
    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 105
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    goto :goto_0

    .line 107
    :cond_c
    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 108
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    goto/16 :goto_0

    .line 110
    :cond_d
    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REFRESH:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 111
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REFRESH:Lnet/fortuna/ical4j/model/property/Method;

    goto/16 :goto_0

    .line 113
    :cond_e
    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 114
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    goto/16 :goto_0

    .line 116
    :cond_f
    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 117
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    goto/16 :goto_0

    .line 119
    :cond_10
    sget-object v1, Lnet/fortuna/ical4j/model/property/Priority;->HIGH:Lnet/fortuna/ical4j/model/property/Priority;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Priority;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 120
    sget-object v0, Lnet/fortuna/ical4j/model/property/Priority;->HIGH:Lnet/fortuna/ical4j/model/property/Priority;

    goto/16 :goto_0

    .line 122
    :cond_11
    sget-object v1, Lnet/fortuna/ical4j/model/property/Priority;->LOW:Lnet/fortuna/ical4j/model/property/Priority;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Priority;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 123
    sget-object v0, Lnet/fortuna/ical4j/model/property/Priority;->LOW:Lnet/fortuna/ical4j/model/property/Priority;

    goto/16 :goto_0

    .line 125
    :cond_12
    sget-object v1, Lnet/fortuna/ical4j/model/property/Priority;->MEDIUM:Lnet/fortuna/ical4j/model/property/Priority;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Priority;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 126
    sget-object v0, Lnet/fortuna/ical4j/model/property/Priority;->MEDIUM:Lnet/fortuna/ical4j/model/property/Priority;

    goto/16 :goto_0

    .line 128
    :cond_13
    sget-object v1, Lnet/fortuna/ical4j/model/property/Priority;->UNDEFINED:Lnet/fortuna/ical4j/model/property/Priority;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Priority;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 129
    sget-object v0, Lnet/fortuna/ical4j/model/property/Priority;->UNDEFINED:Lnet/fortuna/ical4j/model/property/Priority;

    goto/16 :goto_0

    .line 131
    :cond_14
    sget-object v1, Lnet/fortuna/ical4j/model/property/Status;->VEVENT_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 132
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VEVENT_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

    goto/16 :goto_0

    .line 134
    :cond_15
    sget-object v1, Lnet/fortuna/ical4j/model/property/Status;->VEVENT_CONFIRMED:Lnet/fortuna/ical4j/model/property/Status;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 135
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VEVENT_CONFIRMED:Lnet/fortuna/ical4j/model/property/Status;

    goto/16 :goto_0

    .line 137
    :cond_16
    sget-object v1, Lnet/fortuna/ical4j/model/property/Status;->VEVENT_TENTATIVE:Lnet/fortuna/ical4j/model/property/Status;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 138
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VEVENT_TENTATIVE:Lnet/fortuna/ical4j/model/property/Status;

    goto/16 :goto_0

    .line 140
    :cond_17
    sget-object v1, Lnet/fortuna/ical4j/model/property/Status;->VJOURNAL_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 141
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VJOURNAL_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

    goto/16 :goto_0

    .line 143
    :cond_18
    sget-object v1, Lnet/fortuna/ical4j/model/property/Status;->VJOURNAL_DRAFT:Lnet/fortuna/ical4j/model/property/Status;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 144
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VJOURNAL_DRAFT:Lnet/fortuna/ical4j/model/property/Status;

    goto/16 :goto_0

    .line 146
    :cond_19
    sget-object v1, Lnet/fortuna/ical4j/model/property/Status;->VJOURNAL_FINAL:Lnet/fortuna/ical4j/model/property/Status;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 147
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VJOURNAL_FINAL:Lnet/fortuna/ical4j/model/property/Status;

    goto/16 :goto_0

    .line 149
    :cond_1a
    sget-object v1, Lnet/fortuna/ical4j/model/property/Status;->VTODO_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 150
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VTODO_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

    goto/16 :goto_0

    .line 152
    :cond_1b
    sget-object v1, Lnet/fortuna/ical4j/model/property/Status;->VTODO_COMPLETED:Lnet/fortuna/ical4j/model/property/Status;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 153
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VTODO_COMPLETED:Lnet/fortuna/ical4j/model/property/Status;

    goto/16 :goto_0

    .line 155
    :cond_1c
    sget-object v1, Lnet/fortuna/ical4j/model/property/Status;->VTODO_IN_PROCESS:Lnet/fortuna/ical4j/model/property/Status;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 156
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VTODO_IN_PROCESS:Lnet/fortuna/ical4j/model/property/Status;

    goto/16 :goto_0

    .line 158
    :cond_1d
    sget-object v1, Lnet/fortuna/ical4j/model/property/Status;->VTODO_NEEDS_ACTION:Lnet/fortuna/ical4j/model/property/Status;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 159
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VTODO_NEEDS_ACTION:Lnet/fortuna/ical4j/model/property/Status;

    goto/16 :goto_0

    .line 161
    :cond_1e
    sget-object v1, Lnet/fortuna/ical4j/model/property/Transp;->OPAQUE:Lnet/fortuna/ical4j/model/property/Transp;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Transp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 162
    sget-object v0, Lnet/fortuna/ical4j/model/property/Transp;->OPAQUE:Lnet/fortuna/ical4j/model/property/Transp;

    goto/16 :goto_0

    .line 164
    :cond_1f
    sget-object v1, Lnet/fortuna/ical4j/model/property/Transp;->TRANSPARENT:Lnet/fortuna/ical4j/model/property/Transp;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Transp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 165
    sget-object v0, Lnet/fortuna/ical4j/model/property/Transp;->TRANSPARENT:Lnet/fortuna/ical4j/model/property/Transp;

    goto/16 :goto_0

    .line 167
    :cond_20
    sget-object v1, Lnet/fortuna/ical4j/model/property/Version;->VERSION_2_0:Lnet/fortuna/ical4j/model/property/Version;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Version;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 168
    sget-object v0, Lnet/fortuna/ical4j/model/property/Version;->VERSION_2_0:Lnet/fortuna/ical4j/model/property/Version;

    goto/16 :goto_0

    .line 171
    :cond_21
    sget-object v1, Lnet/fortuna/ical4j/model/property/Version;->VERSION_1_0:Lnet/fortuna/ical4j/model/property/Version;

    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/property/Version;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    sget-object v0, Lnet/fortuna/ical4j/model/property/Version;->VERSION_1_0:Lnet/fortuna/ical4j/model/property/Version;

    goto/16 :goto_0
.end method
