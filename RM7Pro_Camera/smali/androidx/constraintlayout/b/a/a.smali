.class public Landroidx/constraintlayout/b/a/a;
.super Landroidx/constraintlayout/b/a/j;
.source "SourceFile"


# instance fields
.field a:Z

.field private ao:I

.field private ap:Z

.field private aq:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Landroidx/constraintlayout/b/a/j;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    const/4 v1, 0x1

    .line 38
    iput-boolean v1, p0, Landroidx/constraintlayout/b/a/a;->ap:Z

    .line 39
    iput v0, p0, Landroidx/constraintlayout/b/a/a;->aq:I

    .line 40
    iput-boolean v0, p0, Landroidx/constraintlayout/b/a/a;->a:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 55
    iput p1, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    return-void
.end method

.method public a(Landroidx/constraintlayout/b/d;Z)V
    .locals 12

    .line 119
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a;->E:[Landroidx/constraintlayout/b/a/d;

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a;->w:Landroidx/constraintlayout/b/a/d;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 120
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a;->E:[Landroidx/constraintlayout/b/a/d;

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a;->x:Landroidx/constraintlayout/b/a/d;

    const/4 v2, 0x2

    aput-object v0, p2, v2

    .line 121
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a;->E:[Landroidx/constraintlayout/b/a/d;

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a;->y:Landroidx/constraintlayout/b/a/d;

    const/4 v3, 0x1

    aput-object v0, p2, v3

    .line 122
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a;->E:[Landroidx/constraintlayout/b/a/d;

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a;->z:Landroidx/constraintlayout/b/a/d;

    const/4 v4, 0x3

    aput-object v0, p2, v4

    move p2, v1

    .line 123
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a;->E:[Landroidx/constraintlayout/b/a/d;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 124
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, p2

    iget-object v5, p0, Landroidx/constraintlayout/b/a/a;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v5, v5, p2

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/b/h;

    move-result-object v5

    iput-object v5, v0, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 126
    :cond_0
    iget p2, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    if-ltz p2, :cond_1f

    const/4 v0, 0x4

    if-ge p2, v0, :cond_1f

    .line 127
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a;->E:[Landroidx/constraintlayout/b/a/d;

    iget v5, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    aget-object p2, p2, v5

    .line 133
    iget-boolean v5, p0, Landroidx/constraintlayout/b/a/a;->a:Z

    if-nez v5, :cond_1

    .line 134
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/a;->i()Z

    .line 136
    :cond_1
    iget-boolean v5, p0, Landroidx/constraintlayout/b/a/a;->a:Z

    if-eqz v5, :cond_6

    .line 137
    iput-boolean v1, p0, Landroidx/constraintlayout/b/a/a;->a:Z

    .line 138
    iget p2, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    if-eqz p2, :cond_4

    if-ne p2, v3, :cond_2

    goto :goto_1

    :cond_2
    if-eq p2, v2, :cond_3

    if-ne p2, v4, :cond_5

    .line 142
    :cond_3
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a;->x:Landroidx/constraintlayout/b/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget v0, p0, Landroidx/constraintlayout/b/a/a;->N:I

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/h;I)V

    .line 143
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a;->z:Landroidx/constraintlayout/b/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget v0, p0, Landroidx/constraintlayout/b/a/a;->N:I

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/h;I)V

    goto :goto_2

    .line 139
    :cond_4
    :goto_1
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a;->w:Landroidx/constraintlayout/b/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget v0, p0, Landroidx/constraintlayout/b/a/a;->M:I

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/h;I)V

    .line 140
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a;->y:Landroidx/constraintlayout/b/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget v0, p0, Landroidx/constraintlayout/b/a/a;->M:I

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/h;I)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    move v5, v1

    .line 152
    :goto_3
    iget v6, p0, Landroidx/constraintlayout/b/a/a;->an:I

    if-ge v5, v6, :cond_c

    .line 153
    iget-object v6, p0, Landroidx/constraintlayout/b/a/a;->am:[Landroidx/constraintlayout/b/a/e;

    aget-object v6, v6, v5

    .line 154
    iget-boolean v7, p0, Landroidx/constraintlayout/b/a/a;->ap:Z

    if-nez v7, :cond_7

    invoke-virtual {v6}, Landroidx/constraintlayout/b/a/e;->a()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_5

    .line 157
    :cond_7
    iget v7, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    if-eqz v7, :cond_8

    if-ne v7, v3, :cond_9

    .line 158
    :cond_8
    invoke-virtual {v6}, Landroidx/constraintlayout/b/a/e;->S()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v7, v8, :cond_9

    iget-object v7, v6, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v7, v7, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v7, :cond_9

    iget-object v7, v6, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v7, v7, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v7, :cond_9

    :goto_4
    move v5, v3

    goto :goto_6

    .line 162
    :cond_9
    iget v7, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    if-eq v7, v2, :cond_a

    if-ne v7, v4, :cond_b

    .line 163
    :cond_a
    invoke-virtual {v6}, Landroidx/constraintlayout/b/a/e;->T()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v7, v8, :cond_b

    iget-object v7, v6, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget-object v7, v7, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v7, :cond_b

    iget-object v6, v6, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v6, v6, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v6, :cond_b

    goto :goto_4

    :cond_b
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_c
    move v5, v1

    .line 170
    :goto_6
    iget-object v6, p0, Landroidx/constraintlayout/b/a/a;->w:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v6}, Landroidx/constraintlayout/b/a/d;->c()Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Landroidx/constraintlayout/b/a/a;->y:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v6}, Landroidx/constraintlayout/b/a/d;->c()Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_7

    :cond_d
    move v6, v1

    goto :goto_8

    :cond_e
    :goto_7
    move v6, v3

    .line 171
    :goto_8
    iget-object v7, p0, Landroidx/constraintlayout/b/a/a;->x:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v7}, Landroidx/constraintlayout/b/a/d;->c()Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, p0, Landroidx/constraintlayout/b/a/a;->z:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v7}, Landroidx/constraintlayout/b/a/d;->c()Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_9

    :cond_f
    move v7, v1

    goto :goto_a

    :cond_10
    :goto_9
    move v7, v3

    :goto_a
    if-nez v5, :cond_15

    .line 172
    iget v8, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    if-nez v8, :cond_11

    if-nez v6, :cond_14

    :cond_11
    if-ne v8, v2, :cond_12

    if-nez v7, :cond_14

    :cond_12
    if-ne v8, v3, :cond_13

    if-nez v6, :cond_14

    :cond_13
    if-ne v8, v4, :cond_15

    if-eqz v7, :cond_15

    :cond_14
    move v6, v3

    goto :goto_b

    :cond_15
    move v6, v1

    :goto_b
    const/4 v7, 0x5

    if-nez v6, :cond_16

    move v7, v0

    :cond_16
    move v6, v1

    .line 181
    :goto_c
    iget v8, p0, Landroidx/constraintlayout/b/a/a;->an:I

    if-ge v6, v8, :cond_1b

    .line 182
    iget-object v8, p0, Landroidx/constraintlayout/b/a/a;->am:[Landroidx/constraintlayout/b/a/e;

    aget-object v8, v8, v6

    .line 183
    iget-boolean v9, p0, Landroidx/constraintlayout/b/a/a;->ap:Z

    if-nez v9, :cond_17

    invoke-virtual {v8}, Landroidx/constraintlayout/b/a/e;->a()Z

    move-result v9

    if-nez v9, :cond_17

    goto :goto_10

    .line 186
    :cond_17
    iget-object v9, v8, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    iget v10, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    aget-object v9, v9, v10

    invoke-virtual {p1, v9}, Landroidx/constraintlayout/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/b/h;

    move-result-object v9

    .line 187
    iget-object v10, v8, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    iget v11, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    aget-object v10, v10, v11

    iput-object v9, v10, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    .line 189
    iget-object v10, v8, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    iget v11, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    aget-object v10, v10, v11

    iget-object v10, v10, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v10, :cond_18

    iget-object v10, v8, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    iget v11, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    aget-object v10, v10, v11

    iget-object v10, v10, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v10, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    if-ne v10, p0, :cond_18

    .line 191
    iget-object v8, v8, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    iget v10, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    aget-object v8, v8, v10

    iget v8, v8, Landroidx/constraintlayout/b/a/d;->d:I

    add-int/2addr v8, v1

    goto :goto_d

    :cond_18
    move v8, v1

    .line 193
    :goto_d
    iget v10, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    if-eqz v10, :cond_1a

    if-ne v10, v2, :cond_19

    goto :goto_e

    .line 196
    :cond_19
    iget-object v10, p2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget v11, p0, Landroidx/constraintlayout/b/a/a;->aq:I

    add-int/2addr v11, v8

    invoke-virtual {p1, v10, v9, v11, v5}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;IZ)V

    goto :goto_f

    .line 194
    :cond_1a
    :goto_e
    iget-object v10, p2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget v11, p0, Landroidx/constraintlayout/b/a/a;->aq:I

    sub-int/2addr v11, v8

    invoke-virtual {p1, v10, v9, v11, v5}, Landroidx/constraintlayout/b/d;->b(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;IZ)V

    .line 203
    :goto_f
    iget-object v10, p2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget v11, p0, Landroidx/constraintlayout/b/a/a;->aq:I

    add-int/2addr v11, v8

    invoke-virtual {p1, v10, v9, v11, v7}, Landroidx/constraintlayout/b/d;->c(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)Landroidx/constraintlayout/b/b;

    :goto_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 210
    :cond_1b
    iget p2, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    const/16 v5, 0x8

    if-nez p2, :cond_1c

    .line 211
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a;->y:Landroidx/constraintlayout/b/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    invoke-virtual {p1, p2, v2, v1, v5}, Landroidx/constraintlayout/b/d;->c(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)Landroidx/constraintlayout/b/b;

    .line 212
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a;->w:Landroidx/constraintlayout/b/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a;->H:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/b/d;->c(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)Landroidx/constraintlayout/b/b;

    .line 213
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a;->w:Landroidx/constraintlayout/b/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a;->H:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/b/d;->c(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)Landroidx/constraintlayout/b/b;

    goto/16 :goto_11

    :cond_1c
    if-ne p2, v3, :cond_1d

    .line 215
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a;->w:Landroidx/constraintlayout/b/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    invoke-virtual {p1, p2, v2, v1, v5}, Landroidx/constraintlayout/b/d;->c(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)Landroidx/constraintlayout/b/b;

    .line 216
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a;->w:Landroidx/constraintlayout/b/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a;->H:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/b/d;->c(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)Landroidx/constraintlayout/b/b;

    .line 217
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a;->w:Landroidx/constraintlayout/b/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a;->H:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/b/d;->c(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)Landroidx/constraintlayout/b/b;

    goto :goto_11

    :cond_1d
    if-ne p2, v2, :cond_1e

    .line 219
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a;->z:Landroidx/constraintlayout/b/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a;->x:Landroidx/constraintlayout/b/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    invoke-virtual {p1, p2, v2, v1, v5}, Landroidx/constraintlayout/b/d;->c(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)Landroidx/constraintlayout/b/b;

    .line 220
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a;->x:Landroidx/constraintlayout/b/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a;->H:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/b/d;->c(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)Landroidx/constraintlayout/b/b;

    .line 221
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a;->x:Landroidx/constraintlayout/b/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a;->H:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/b/d;->c(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)Landroidx/constraintlayout/b/b;

    goto :goto_11

    :cond_1e
    if-ne p2, v4, :cond_1f

    .line 223
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a;->x:Landroidx/constraintlayout/b/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    invoke-virtual {p1, p2, v2, v1, v5}, Landroidx/constraintlayout/b/d;->c(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)Landroidx/constraintlayout/b/b;

    .line 224
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a;->x:Landroidx/constraintlayout/b/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a;->H:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/b/d;->c(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)Landroidx/constraintlayout/b/b;

    .line 225
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a;->x:Landroidx/constraintlayout/b/a/d;

    iget-object p2, p2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a;->H:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/b/d;->c(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)Landroidx/constraintlayout/b/b;

    :cond_1f
    :goto_11
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Landroidx/constraintlayout/b/a/a;->ap:Z

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    .line 52
    iget v0, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 230
    iput p1, p0, Landroidx/constraintlayout/b/a/a;->aq:I

    return-void
.end method

.method public c()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Landroidx/constraintlayout/b/a/a;->ap:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Landroidx/constraintlayout/b/a/a;->a:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Landroidx/constraintlayout/b/a/a;->a:Z

    return v0
.end method

.method protected f()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 94
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/b/a/a;->an:I

    if-ge v1, v2, :cond_4

    .line 95
    iget-object v2, p0, Landroidx/constraintlayout/b/a/a;->am:[Landroidx/constraintlayout/b/a/e;

    aget-object v2, v2, v1

    .line 96
    iget v3, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    .line 99
    :cond_1
    invoke-virtual {v2, v4, v4}, Landroidx/constraintlayout/b/a/e;->a(IZ)V

    goto :goto_2

    .line 97
    :cond_2
    :goto_1
    invoke-virtual {v2, v0, v4}, Landroidx/constraintlayout/b/a/e;->a(IZ)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public g()I
    .locals 1

    .line 234
    iget v0, p0, Landroidx/constraintlayout/b/a/a;->aq:I

    return v0
.end method

.method public h()I
    .locals 3

    .line 238
    iget v0, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    .line 254
    :goto_0
    iget v4, p0, Landroidx/constraintlayout/b/a/a;->an:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ge v2, v4, :cond_5

    .line 255
    iget-object v4, p0, Landroidx/constraintlayout/b/a/a;->am:[Landroidx/constraintlayout/b/a/e;

    aget-object v4, v4, v2

    .line 256
    iget-boolean v7, p0, Landroidx/constraintlayout/b/a/a;->ap:Z

    if-nez v7, :cond_0

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/e;->a()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_2

    .line 259
    :cond_0
    iget v7, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    if-eqz v7, :cond_1

    if-ne v7, v1, :cond_2

    :cond_1
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/e;->d()Z

    move-result v7

    if-nez v7, :cond_2

    :goto_1
    move v3, v0

    goto :goto_2

    .line 261
    :cond_2
    iget v7, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    if-eq v7, v6, :cond_3

    if-ne v7, v5, :cond_4

    :cond_3
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/e;->e()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_13

    .line 266
    iget v2, p0, Landroidx/constraintlayout/b/a/a;->an:I

    if-lez v2, :cond_13

    move v2, v0

    move v3, v2

    .line 270
    :goto_3
    iget v4, p0, Landroidx/constraintlayout/b/a/a;->an:I

    if-ge v0, v4, :cond_10

    .line 271
    iget-object v4, p0, Landroidx/constraintlayout/b/a/a;->am:[Landroidx/constraintlayout/b/a/e;

    aget-object v4, v4, v0

    .line 272
    iget-boolean v7, p0, Landroidx/constraintlayout/b/a/a;->ap:Z

    if-nez v7, :cond_6

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/e;->a()Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_5

    :cond_6
    if-nez v3, :cond_b

    .line 276
    iget v3, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    if-nez v3, :cond_7

    .line 277
    sget-object v2, Landroidx/constraintlayout/b/a/d$a;->b:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->d()I

    move-result v2

    goto :goto_4

    :cond_7
    if-ne v3, v1, :cond_8

    .line 279
    sget-object v2, Landroidx/constraintlayout/b/a/d$a;->d:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->d()I

    move-result v2

    goto :goto_4

    :cond_8
    if-ne v3, v6, :cond_9

    .line 281
    sget-object v2, Landroidx/constraintlayout/b/a/d$a;->c:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->d()I

    move-result v2

    goto :goto_4

    :cond_9
    if-ne v3, v5, :cond_a

    .line 283
    sget-object v2, Landroidx/constraintlayout/b/a/d$a;->e:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->d()I

    move-result v2

    :cond_a
    :goto_4
    move v3, v1

    .line 287
    :cond_b
    iget v7, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    if-nez v7, :cond_c

    .line 288
    sget-object v7, Landroidx/constraintlayout/b/a/d$a;->b:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->d()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_5

    :cond_c
    if-ne v7, v1, :cond_d

    .line 290
    sget-object v7, Landroidx/constraintlayout/b/a/d$a;->d:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->d()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_5

    :cond_d
    if-ne v7, v6, :cond_e

    .line 292
    sget-object v7, Landroidx/constraintlayout/b/a/d$a;->c:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->d()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_5

    :cond_e
    if-ne v7, v5, :cond_f

    .line 294
    sget-object v7, Landroidx/constraintlayout/b/a/d$a;->e:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->d()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_f
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 297
    :cond_10
    iget v0, p0, Landroidx/constraintlayout/b/a/a;->aq:I

    add-int/2addr v2, v0

    .line 298
    iget v0, p0, Landroidx/constraintlayout/b/a/a;->ao:I

    if-eqz v0, :cond_12

    if-ne v0, v1, :cond_11

    goto :goto_6

    .line 301
    :cond_11
    invoke-virtual {p0, v2, v2}, Landroidx/constraintlayout/b/a/a;->b(II)V

    goto :goto_7

    .line 299
    :cond_12
    :goto_6
    invoke-virtual {p0, v2, v2}, Landroidx/constraintlayout/b/a/a;->a(II)V

    .line 306
    :goto_7
    iput-boolean v1, p0, Landroidx/constraintlayout/b/a/a;->a:Z

    return v1

    :cond_13
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Barrier] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 82
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/b/a/a;->an:I

    if-ge v1, v2, :cond_1

    .line 83
    iget-object v2, p0, Landroidx/constraintlayout/b/a/a;->am:[Landroidx/constraintlayout/b/a/e;

    aget-object v2, v2, v1

    if-lez v1, :cond_0

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
