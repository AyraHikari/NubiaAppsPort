.class public Lcom/mpatric/mp3agic/t;
.super Ljava/lang/Object;
.source "MpegFrame.java"


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "I"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "II"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "III"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mpatric/mp3agic/t;->a:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(BBBB)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1, p2, p3, p4}, Lcom/mpatric/mp3agic/c;->a(BBBB)I

    move-result v0

    int-to-long v0, v0

    .line 66
    invoke-direct {p0, v0, v1}, Lcom/mpatric/mp3agic/t;->a(J)V

    .line 67
    return-void
.end method

.method private a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 101
    packed-switch p1, :pswitch_data_0

    .line 105
    :pswitch_0
    new-instance v0, Lcom/mpatric/mp3agic/InvalidDataException;

    const-string v1, "Invalid mpeg audio version in frame header"

    invoke-direct {v0, v1}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :pswitch_1
    const-string v0, "2.5"

    iput-object v0, p0, Lcom/mpatric/mp3agic/t;->b:Ljava/lang/String;

    .line 107
    :goto_0
    return-void

    .line 103
    :pswitch_2
    const-string v0, "2.0"

    iput-object v0, p0, Lcom/mpatric/mp3agic/t;->b:Ljava/lang/String;

    goto :goto_0

    .line 104
    :pswitch_3
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/mpatric/mp3agic/t;->b:Ljava/lang/String;

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 73
    const-wide v0, 0xffe00000L

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mpatric/mp3agic/t;->a(JJ)I

    move-result v0

    int-to-long v0, v0

    .line 74
    const-wide/16 v2, 0x7ff

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mpatric/mp3agic/InvalidDataException;

    const-string v1, "Frame sync missing"

    invoke-direct {v0, v1}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    const-wide/32 v0, 0x180000

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mpatric/mp3agic/t;->a(JJ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mpatric/mp3agic/t;->a(I)V

    .line 76
    const-wide/32 v0, 0x60000

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mpatric/mp3agic/t;->a(JJ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mpatric/mp3agic/t;->b(I)V

    .line 77
    const-wide/32 v0, 0x10000

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mpatric/mp3agic/t;->a(JJ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mpatric/mp3agic/t;->c(I)V

    .line 78
    const-wide/32 v0, 0xf000

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mpatric/mp3agic/t;->a(JJ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mpatric/mp3agic/t;->d(I)V

    .line 79
    const-wide/16 v0, 0xc00

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mpatric/mp3agic/t;->a(JJ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mpatric/mp3agic/t;->e(I)V

    .line 80
    const-wide/16 v0, 0x200

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mpatric/mp3agic/t;->a(JJ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mpatric/mp3agic/t;->f(I)V

    .line 81
    const-wide/16 v0, 0x100

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mpatric/mp3agic/t;->a(JJ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mpatric/mp3agic/t;->g(I)V

    .line 82
    const-wide/16 v0, 0xc0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mpatric/mp3agic/t;->a(JJ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mpatric/mp3agic/t;->h(I)V

    .line 83
    const-wide/16 v0, 0x30

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mpatric/mp3agic/t;->a(JJ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mpatric/mp3agic/t;->i(I)V

    .line 84
    const-wide/16 v0, 0x8

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mpatric/mp3agic/t;->a(JJ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mpatric/mp3agic/t;->j(I)V

    .line 85
    const-wide/16 v0, 0x4

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mpatric/mp3agic/t;->a(JJ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mpatric/mp3agic/t;->k(I)V

    .line 86
    const-wide/16 v0, 0x3

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mpatric/mp3agic/t;->a(JJ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mpatric/mp3agic/t;->l(I)V

    .line 87
    return-void
.end method

.method private b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 110
    packed-switch p1, :pswitch_data_0

    .line 114
    new-instance v0, Lcom/mpatric/mp3agic/InvalidDataException;

    const-string v1, "Invalid mpeg layer description in frame header"

    invoke-direct {v0, v1}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :pswitch_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/mpatric/mp3agic/t;->c:I

    .line 116
    :goto_0
    return-void

    .line 112
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/mpatric/mp3agic/t;->c:I

    goto :goto_0

    .line 113
    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/mpatric/mp3agic/t;->c:I

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private c(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 119
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/mpatric/mp3agic/t;->d:Z

    .line 120
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa0

    const/16 v5, 0x80

    const/16 v4, 0x60

    const/16 v3, 0x40

    const/16 v2, 0x20

    .line 123
    const-string v0, "1.0"

    iget-object v1, p0, Lcom/mpatric/mp3agic/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    iget v0, p0, Lcom/mpatric/mp3agic/t;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 125
    packed-switch p1, :pswitch_data_0

    .line 213
    :cond_0
    :goto_0
    new-instance v0, Lcom/mpatric/mp3agic/InvalidDataException;

    const-string v1, "Invalid bitrate in frame header"

    invoke-direct {v0, v1}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :pswitch_0
    iput v2, p0, Lcom/mpatric/mp3agic/t;->e:I

    .line 209
    :goto_1
    return-void

    .line 127
    :pswitch_1
    iput v3, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 128
    :pswitch_2
    iput v4, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 129
    :pswitch_3
    iput v5, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 130
    :pswitch_4
    iput v6, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 131
    :pswitch_5
    const/16 v0, 0xc0

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 132
    :pswitch_6
    const/16 v0, 0xe0

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 133
    :pswitch_7
    const/16 v0, 0x100

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 134
    :pswitch_8
    const/16 v0, 0x120

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 135
    :pswitch_9
    const/16 v0, 0x140

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 136
    :pswitch_a
    const/16 v0, 0x160

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 137
    :pswitch_b
    const/16 v0, 0x180

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 138
    :pswitch_c
    const/16 v0, 0x1a0

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 139
    :pswitch_d
    const/16 v0, 0x1c0

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 141
    :cond_1
    iget v0, p0, Lcom/mpatric/mp3agic/t;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 142
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 143
    :pswitch_e
    iput v2, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 144
    :pswitch_f
    const/16 v0, 0x30

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 145
    :pswitch_10
    const/16 v0, 0x38

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 146
    :pswitch_11
    iput v3, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 147
    :pswitch_12
    const/16 v0, 0x50

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 148
    :pswitch_13
    iput v4, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 149
    :pswitch_14
    const/16 v0, 0x70

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 150
    :pswitch_15
    iput v5, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 151
    :pswitch_16
    iput v6, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 152
    :pswitch_17
    const/16 v0, 0xc0

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 153
    :pswitch_18
    const/16 v0, 0xe0

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 154
    :pswitch_19
    const/16 v0, 0x100

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 155
    :pswitch_1a
    const/16 v0, 0x140

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 156
    :pswitch_1b
    const/16 v0, 0x180

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto :goto_1

    .line 158
    :cond_2
    iget v0, p0, Lcom/mpatric/mp3agic/t;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 159
    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 160
    :pswitch_1c
    iput v2, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 161
    :pswitch_1d
    const/16 v0, 0x28

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 162
    :pswitch_1e
    const/16 v0, 0x30

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 163
    :pswitch_1f
    const/16 v0, 0x38

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 164
    :pswitch_20
    iput v3, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 165
    :pswitch_21
    const/16 v0, 0x50

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 166
    :pswitch_22
    iput v4, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 167
    :pswitch_23
    const/16 v0, 0x70

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 168
    :pswitch_24
    iput v5, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 169
    :pswitch_25
    iput v6, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 170
    :pswitch_26
    const/16 v0, 0xc0

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 171
    :pswitch_27
    const/16 v0, 0xe0

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 172
    :pswitch_28
    const/16 v0, 0x100

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 173
    :pswitch_29
    const/16 v0, 0x140

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 176
    :cond_3
    const-string v0, "2.0"

    iget-object v1, p0, Lcom/mpatric/mp3agic/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "2.5"

    iget-object v1, p0, Lcom/mpatric/mp3agic/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    :cond_4
    iget v0, p0, Lcom/mpatric/mp3agic/t;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 178
    packed-switch p1, :pswitch_data_3

    goto/16 :goto_0

    .line 179
    :pswitch_2a
    iput v2, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 180
    :pswitch_2b
    const/16 v0, 0x30

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 181
    :pswitch_2c
    const/16 v0, 0x38

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 182
    :pswitch_2d
    iput v3, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 183
    :pswitch_2e
    const/16 v0, 0x50

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 184
    :pswitch_2f
    iput v4, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 185
    :pswitch_30
    const/16 v0, 0x70

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 186
    :pswitch_31
    iput v5, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 187
    :pswitch_32
    const/16 v0, 0x90

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 188
    :pswitch_33
    iput v6, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 189
    :pswitch_34
    const/16 v0, 0xb0

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 190
    :pswitch_35
    const/16 v0, 0xc0

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 191
    :pswitch_36
    const/16 v0, 0xe0

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 192
    :pswitch_37
    const/16 v0, 0x100

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 194
    :cond_5
    iget v0, p0, Lcom/mpatric/mp3agic/t;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/mpatric/mp3agic/t;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 195
    :cond_6
    packed-switch p1, :pswitch_data_4

    goto/16 :goto_0

    .line 196
    :pswitch_38
    const/16 v0, 0x8

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 197
    :pswitch_39
    const/16 v0, 0x10

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 198
    :pswitch_3a
    const/16 v0, 0x18

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 199
    :pswitch_3b
    iput v2, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 200
    :pswitch_3c
    const/16 v0, 0x28

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 201
    :pswitch_3d
    const/16 v0, 0x30

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 202
    :pswitch_3e
    const/16 v0, 0x38

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 203
    :pswitch_3f
    iput v3, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 204
    :pswitch_40
    const/16 v0, 0x50

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 205
    :pswitch_41
    iput v4, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 206
    :pswitch_42
    const/16 v0, 0x70

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 207
    :pswitch_43
    iput v5, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 208
    :pswitch_44
    const/16 v0, 0x90

    iput v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 209
    :pswitch_45
    iput v6, p0, Lcom/mpatric/mp3agic/t;->e:I

    goto/16 :goto_1

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 142
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    .line 159
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
    .end packed-switch

    .line 178
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
    .end packed-switch

    .line 195
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
    .end packed-switch
.end method

.method private e(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 217
    const-string v0, "1.0"

    iget-object v1, p0, Lcom/mpatric/mp3agic/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    packed-switch p1, :pswitch_data_0

    .line 236
    :cond_0
    :goto_0
    new-instance v0, Lcom/mpatric/mp3agic/InvalidDataException;

    const-string v1, "Invalid sample rate in frame header"

    invoke-direct {v0, v1}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :pswitch_0
    const v0, 0xac44

    iput v0, p0, Lcom/mpatric/mp3agic/t;->f:I

    .line 233
    :goto_1
    return-void

    .line 220
    :pswitch_1
    const v0, 0xbb80

    iput v0, p0, Lcom/mpatric/mp3agic/t;->f:I

    goto :goto_1

    .line 221
    :pswitch_2
    const/16 v0, 0x7d00

    iput v0, p0, Lcom/mpatric/mp3agic/t;->f:I

    goto :goto_1

    .line 223
    :cond_1
    const-string v0, "2.0"

    iget-object v1, p0, Lcom/mpatric/mp3agic/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 225
    :pswitch_3
    const/16 v0, 0x5622

    iput v0, p0, Lcom/mpatric/mp3agic/t;->f:I

    goto :goto_1

    .line 226
    :pswitch_4
    const/16 v0, 0x5dc0

    iput v0, p0, Lcom/mpatric/mp3agic/t;->f:I

    goto :goto_1

    .line 227
    :pswitch_5
    const/16 v0, 0x3e80

    iput v0, p0, Lcom/mpatric/mp3agic/t;->f:I

    goto :goto_1

    .line 229
    :cond_2
    const-string v0, "2.5"

    iget-object v1, p0, Lcom/mpatric/mp3agic/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    packed-switch p1, :pswitch_data_2

    goto :goto_0

    .line 231
    :pswitch_6
    const/16 v0, 0x2b11

    iput v0, p0, Lcom/mpatric/mp3agic/t;->f:I

    goto :goto_1

    .line 232
    :pswitch_7
    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/mpatric/mp3agic/t;->f:I

    goto :goto_1

    .line 233
    :pswitch_8
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/mpatric/mp3agic/t;->f:I

    goto :goto_1

    .line 218
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 224
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 230
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private f(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 240
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/mpatric/mp3agic/t;->g:Z

    .line 241
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 244
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/mpatric/mp3agic/t;->h:Z

    .line 245
    return-void

    .line 244
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 248
    packed-switch p1, :pswitch_data_0

    .line 253
    new-instance v0, Lcom/mpatric/mp3agic/InvalidDataException;

    const-string v1, "Invalid channel mode in frame header"

    invoke-direct {v0, v1}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :pswitch_0
    const-string v0, "Stereo"

    iput-object v0, p0, Lcom/mpatric/mp3agic/t;->i:Ljava/lang/String;

    .line 255
    :goto_0
    return-void

    .line 250
    :pswitch_1
    const-string v0, "Joint stereo"

    iput-object v0, p0, Lcom/mpatric/mp3agic/t;->i:Ljava/lang/String;

    goto :goto_0

    .line 251
    :pswitch_2
    const-string v0, "Dual mono"

    iput-object v0, p0, Lcom/mpatric/mp3agic/t;->i:Ljava/lang/String;

    goto :goto_0

    .line 252
    :pswitch_3
    const-string v0, "Mono"

    iput-object v0, p0, Lcom/mpatric/mp3agic/t;->i:Ljava/lang/String;

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private i(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 258
    const-string v0, "Joint stereo"

    iget-object v1, p0, Lcom/mpatric/mp3agic/t;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    const-string v0, "n/a"

    iput-object v0, p0, Lcom/mpatric/mp3agic/t;->j:Ljava/lang/String;

    .line 278
    :goto_0
    return-void

    .line 261
    :cond_0
    iget v0, p0, Lcom/mpatric/mp3agic/t;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/mpatric/mp3agic/t;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 262
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 276
    :cond_2
    :goto_1
    new-instance v0, Lcom/mpatric/mp3agic/InvalidDataException;

    const-string v1, "Invalid mode extension in frame header"

    invoke-direct {v0, v1}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :pswitch_0
    const-string v0, "Bands 4-31"

    iput-object v0, p0, Lcom/mpatric/mp3agic/t;->j:Ljava/lang/String;

    goto :goto_0

    .line 264
    :pswitch_1
    const-string v0, "Bands 8-31"

    iput-object v0, p0, Lcom/mpatric/mp3agic/t;->j:Ljava/lang/String;

    goto :goto_0

    .line 265
    :pswitch_2
    const-string v0, "Bands 12-31"

    iput-object v0, p0, Lcom/mpatric/mp3agic/t;->j:Ljava/lang/String;

    goto :goto_0

    .line 266
    :pswitch_3
    const-string v0, "Bands 16-31"

    iput-object v0, p0, Lcom/mpatric/mp3agic/t;->j:Ljava/lang/String;

    goto :goto_0

    .line 268
    :cond_3
    iget v0, p0, Lcom/mpatric/mp3agic/t;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 269
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 270
    :pswitch_4
    const-string v0, "None"

    iput-object v0, p0, Lcom/mpatric/mp3agic/t;->j:Ljava/lang/String;

    goto :goto_0

    .line 271
    :pswitch_5
    const-string v0, "Intensity stereo"

    iput-object v0, p0, Lcom/mpatric/mp3agic/t;->j:Ljava/lang/String;

    goto :goto_0

    .line 272
    :pswitch_6
    const-string v0, "M/S stereo"

    iput-object v0, p0, Lcom/mpatric/mp3agic/t;->j:Ljava/lang/String;

    goto :goto_0

    .line 273
    :pswitch_7
    const-string v0, "Intensity & M/S stereo"

    iput-object v0, p0, Lcom/mpatric/mp3agic/t;->j:Ljava/lang/String;

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 269
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private j(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 281
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/mpatric/mp3agic/t;->k:Z

    .line 282
    return-void

    .line 281
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 285
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/mpatric/mp3agic/t;->l:Z

    .line 286
    return-void

    .line 285
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 289
    packed-switch p1, :pswitch_data_0

    .line 293
    :pswitch_0
    new-instance v0, Lcom/mpatric/mp3agic/InvalidDataException;

    const-string v1, "Invalid emphasis in frame header"

    invoke-direct {v0, v1}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :pswitch_1
    const-string v0, "None"

    iput-object v0, p0, Lcom/mpatric/mp3agic/t;->m:Ljava/lang/String;

    .line 295
    :goto_0
    return-void

    .line 291
    :pswitch_2
    const-string v0, "50/15 ms"

    iput-object v0, p0, Lcom/mpatric/mp3agic/t;->m:Ljava/lang/String;

    goto :goto_0

    .line 292
    :pswitch_3
    const-string v0, "CCITT J.17"

    iput-object v0, p0, Lcom/mpatric/mp3agic/t;->m:Ljava/lang/String;

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/mpatric/mp3agic/t;->e:I

    return v0
.end method

.method protected a(JJ)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 90
    move v0, v1

    .line 91
    :goto_0
    const/16 v2, 0x1f

    if-le v0, v2, :cond_1

    move v0, v1

    .line 97
    :cond_0
    shr-long v2, p1, v0

    shr-long v0, p3, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 92
    :cond_1
    shr-long v2, p3, v0

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/mpatric/mp3agic/t;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/mpatric/mp3agic/t;->k:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/mpatric/mp3agic/t;->m:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    sget-object v0, Lcom/mpatric/mp3agic/t;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/mpatric/mp3agic/t;->c:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/mpatric/mp3agic/t;->j:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/mpatric/mp3agic/t;->l:Z

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/mpatric/mp3agic/t;->f:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/mpatric/mp3agic/t;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 348
    iget-boolean v0, p0, Lcom/mpatric/mp3agic/t;->g:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 350
    :goto_0
    iget v2, p0, Lcom/mpatric/mp3agic/t;->c:I

    if-ne v2, v1, :cond_1

    .line 351
    const v1, 0xbb80

    iget v2, p0, Lcom/mpatric/mp3agic/t;->e:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/mpatric/mp3agic/t;->f:I

    div-int/2addr v1, v2

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 355
    :goto_1
    long-to-int v0, v0

    return v0

    .line 349
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 353
    :cond_1
    const v1, 0x23280

    iget v2, p0, Lcom/mpatric/mp3agic/t;->e:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/mpatric/mp3agic/t;->f:I

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_1
.end method
