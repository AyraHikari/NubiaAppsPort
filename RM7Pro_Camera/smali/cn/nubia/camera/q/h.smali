.class public Lcn/nubia/camera/q/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Landroid/content/res/Resources;

.field private k:I

.field private l:Lcn/nubia/camera/q/o;

.field private m:Lcn/nubia/camera/q/o;

.field private n:Lcn/nubia/camera/q/o;

.field private o:Z

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Z)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcn/nubia/camera/q/h;->c:Landroid/view/View;

    .line 18
    iput-object v0, p0, Lcn/nubia/camera/q/h;->d:Landroid/view/View;

    .line 19
    iput-object v0, p0, Lcn/nubia/camera/q/h;->e:Landroid/view/View;

    .line 20
    iput-object v0, p0, Lcn/nubia/camera/q/h;->f:Landroid/view/View;

    const-string v1, "full"

    .line 22
    iput-object v1, p0, Lcn/nubia/camera/q/h;->i:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcn/nubia/camera/q/h;->l:Lcn/nubia/camera/q/o;

    .line 27
    iput-object v0, p0, Lcn/nubia/camera/q/h;->m:Lcn/nubia/camera/q/o;

    .line 28
    iput-object v0, p0, Lcn/nubia/camera/q/h;->n:Lcn/nubia/camera/q/o;

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcn/nubia/camera/q/h;->o:Z

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcn/nubia/camera/q/h;->p:I

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcn/nubia/camera/q/h;->q:Z

    .line 32
    iput-boolean v0, p0, Lcn/nubia/camera/q/h;->r:Z

    .line 33
    iput-boolean v0, p0, Lcn/nubia/camera/q/h;->s:Z

    .line 43
    iput-object p1, p0, Lcn/nubia/camera/q/h;->j:Landroid/content/res/Resources;

    .line 44
    iput-boolean p2, p0, Lcn/nubia/camera/q/h;->q:Z

    .line 45
    invoke-direct {p0}, Lcn/nubia/camera/q/h;->e()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07019a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-direct {p0}, Lcn/nubia/camera/q/h;->e()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701da

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/camera/q/h;->t:I

    .line 46
    invoke-static {}, Lcn/nubia/camera/ba/a;->e()I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/q/h;->b:I

    return-void
.end method

.method private a(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    .line 326
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 327
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 328
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method private c()V
    .locals 3

    .line 67
    invoke-direct {p0}, Lcn/nubia/camera/q/h;->d()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/q/h;->k:I

    .line 68
    iget v1, p0, Lcn/nubia/camera/q/h;->b:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/q/h;->g:I

    .line 69
    invoke-direct {p0}, Lcn/nubia/camera/q/h;->e()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0701e5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/q/h;->h:I

    return-void
.end method

.method private d()I
    .locals 4

    .line 77
    iget v0, p0, Lcn/nubia/camera/q/h;->t:I

    iget-boolean v1, p0, Lcn/nubia/camera/q/h;->q:Z

    const v2, 0x7f07012d

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 78
    invoke-direct {p0}, Lcn/nubia/camera/q/h;->e()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcn/nubia/camera/q/h;->r:Z

    if-eqz v1, :cond_1

    .line 79
    invoke-direct {p0}, Lcn/nubia/camera/q/h;->e()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcn/nubia/camera/q/h;->r:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcn/nubia/camera/q/h;->s:Z

    if-eqz v1, :cond_2

    .line 80
    invoke-direct {p0}, Lcn/nubia/camera/q/h;->e()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    :cond_2
    add-int/2addr v0, v3

    return v0
.end method

.method private e()Landroid/content/res/Resources;
    .locals 1

    .line 101
    iget-object v0, p0, Lcn/nubia/camera/q/h;->j:Landroid/content/res/Resources;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 11

    .line 112
    invoke-direct {p0}, Lcn/nubia/camera/q/h;->c()V

    .line 113
    iget-object v0, p0, Lcn/nubia/camera/q/h;->i:Ljava/lang/String;

    const-string v1, "full"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 114
    iget-object v0, p0, Lcn/nubia/camera/q/h;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/q/h;->l:Lcn/nubia/camera/q/o;

    iget v2, p0, Lcn/nubia/camera/q/h;->k:I

    invoke-virtual {v0, v2}, Lcn/nubia/camera/q/o;->b(I)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/h;->e:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 118
    iget v0, p0, Lcn/nubia/camera/q/h;->k:I

    iget-object v2, p0, Lcn/nubia/camera/q/h;->f:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/nubia/camera/q/h;->f:Landroid/view/View;

    invoke-direct {p0, v2}, Lcn/nubia/camera/q/h;->a(Landroid/view/View;)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    .line 119
    iget-object v2, p0, Lcn/nubia/camera/q/h;->m:Lcn/nubia/camera/q/o;

    invoke-virtual {v2, v0}, Lcn/nubia/camera/q/o;->b(I)V

    .line 121
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/q/h;->n:Lcn/nubia/camera/q/o;

    if-eqz v0, :cond_3

    .line 122
    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/o;->a(I)V

    :cond_3
    return-void

    .line 127
    :cond_4
    iget v0, p0, Lcn/nubia/camera/q/h;->a:I

    .line 128
    iget-object v2, p0, Lcn/nubia/camera/q/h;->d:Landroid/view/View;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcn/nubia/camera/q/h;->d:Landroid/view/View;

    invoke-direct {p0, v2}, Lcn/nubia/camera/q/h;->a(Landroid/view/View;)I

    .line 129
    :cond_5
    iget-object v2, p0, Lcn/nubia/camera/q/h;->c:Landroid/view/View;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcn/nubia/camera/q/h;->c:Landroid/view/View;

    invoke-direct {p0, v2}, Lcn/nubia/camera/q/h;->a(Landroid/view/View;)I

    move-result v2

    goto :goto_1

    :cond_6
    move v2, v1

    .line 130
    :goto_1
    iget v3, p0, Lcn/nubia/camera/q/h;->p:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_9

    .line 131
    iget-object v3, p0, Lcn/nubia/camera/q/h;->e:Landroid/view/View;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcn/nubia/camera/q/h;->d:Landroid/view/View;

    .line 132
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcn/nubia/camera/q/h;->e:Landroid/view/View;

    invoke-direct {p0, v3}, Lcn/nubia/camera/q/h;->a(Landroid/view/View;)I

    move-result v3

    goto :goto_2

    :cond_7
    move v3, v2

    goto :goto_2

    :cond_8
    move v3, v1

    goto :goto_2

    .line 134
    :cond_9
    iget-object v3, p0, Lcn/nubia/camera/q/h;->e:Landroid/view/View;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    iget v3, p0, Lcn/nubia/camera/q/h;->p:I

    .line 137
    :goto_2
    iget-object v4, p0, Lcn/nubia/camera/q/h;->f:Landroid/view/View;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcn/nubia/camera/q/h;->f:Landroid/view/View;

    invoke-direct {p0, v4}, Lcn/nubia/camera/q/h;->a(Landroid/view/View;)I

    move-result v4

    goto :goto_3

    :cond_a
    move v4, v1

    .line 138
    :goto_3
    invoke-direct {p0}, Lcn/nubia/camera/q/h;->e()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701e5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    add-int v6, v0, v3

    add-int/2addr v6, v4

    .line 141
    iget v7, p0, Lcn/nubia/camera/q/h;->h:I

    const/4 v8, 0x1

    if-gt v6, v7, :cond_12

    if-eqz v5, :cond_b

    move v9, v8

    goto :goto_4

    :cond_b
    move v9, v1

    :goto_4
    if-eqz v0, :cond_c

    move v0, v8

    goto :goto_5

    :cond_c
    move v0, v1

    :goto_5
    add-int/2addr v9, v0

    if-eqz v3, :cond_d

    move v0, v8

    goto :goto_6

    :cond_d
    move v0, v1

    :goto_6
    add-int/2addr v9, v0

    if-eqz v4, :cond_e

    goto :goto_7

    :cond_e
    move v8, v1

    :goto_7
    add-int/2addr v9, v8

    sub-int/2addr v7, v6

    .line 147
    div-int/2addr v7, v9

    if-eqz v4, :cond_f

    .line 150
    iget-object v0, p0, Lcn/nubia/camera/q/h;->l:Lcn/nubia/camera/q/o;

    iget v3, p0, Lcn/nubia/camera/q/h;->k:I

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcn/nubia/camera/q/o;->b(I)V

    :cond_f
    if-eqz v2, :cond_11

    .line 153
    iget v0, p0, Lcn/nubia/camera/q/h;->k:I

    add-int/2addr v0, v7

    if-eqz v4, :cond_10

    add-int v1, v7, v4

    :cond_10
    add-int/2addr v0, v1

    .line 154
    iget-object v1, p0, Lcn/nubia/camera/q/h;->m:Lcn/nubia/camera/q/o;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/q/o;->b(I)V

    .line 158
    :cond_11
    iget-object v0, p0, Lcn/nubia/camera/q/h;->n:Lcn/nubia/camera/q/o;

    if-eqz v0, :cond_42

    add-int/2addr v5, v7

    .line 159
    invoke-virtual {v0, v5}, Lcn/nubia/camera/q/o;->a(I)V

    goto/16 :goto_19

    :cond_12
    if-le v6, v7, :cond_19

    .line 161
    iget v9, p0, Lcn/nubia/camera/q/h;->g:I

    if-gt v6, v9, :cond_19

    if-eqz v0, :cond_13

    move v0, v8

    goto :goto_8

    :cond_13
    move v0, v1

    :goto_8
    if-eqz v3, :cond_14

    move v3, v8

    goto :goto_9

    :cond_14
    move v3, v1

    :goto_9
    add-int/2addr v0, v3

    if-eqz v4, :cond_15

    goto :goto_a

    :cond_15
    move v8, v1

    :goto_a
    add-int/2addr v0, v8

    sub-int/2addr v9, v6

    .line 165
    div-int/2addr v9, v0

    if-eqz v4, :cond_16

    .line 167
    iget-object v0, p0, Lcn/nubia/camera/q/h;->l:Lcn/nubia/camera/q/o;

    iget v3, p0, Lcn/nubia/camera/q/h;->k:I

    add-int/2addr v3, v9

    invoke-virtual {v0, v3}, Lcn/nubia/camera/q/o;->b(I)V

    :cond_16
    if-eqz v2, :cond_18

    .line 170
    iget v0, p0, Lcn/nubia/camera/q/h;->k:I

    add-int/2addr v0, v9

    if-eqz v4, :cond_17

    add-int/2addr v9, v4

    goto :goto_b

    :cond_17
    move v9, v1

    :goto_b
    add-int/2addr v0, v9

    .line 171
    iget-object v2, p0, Lcn/nubia/camera/q/h;->m:Lcn/nubia/camera/q/o;

    invoke-virtual {v2, v0}, Lcn/nubia/camera/q/o;->b(I)V

    .line 173
    :cond_18
    iget-object v0, p0, Lcn/nubia/camera/q/h;->n:Lcn/nubia/camera/q/o;

    if-eqz v0, :cond_42

    .line 174
    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/o;->a(I)V

    goto/16 :goto_19

    .line 176
    :cond_19
    iget v9, p0, Lcn/nubia/camera/q/h;->g:I

    if-le v6, v9, :cond_42

    sub-int v10, v6, v2

    if-gt v10, v7, :cond_20

    if-eqz v5, :cond_1a

    move v6, v8

    goto :goto_c

    :cond_1a
    move v6, v1

    :goto_c
    if-eqz v0, :cond_1b

    move v9, v8

    goto :goto_d

    :cond_1b
    move v9, v1

    :goto_d
    add-int/2addr v6, v9

    if-eqz v4, :cond_1c

    goto :goto_e

    :cond_1c
    move v8, v1

    :goto_e
    add-int/2addr v6, v8

    sub-int/2addr v7, v0

    sub-int/2addr v7, v4

    sub-int/2addr v3, v2

    sub-int/2addr v7, v3

    .line 181
    div-int/2addr v7, v6

    if-eqz v4, :cond_1d

    .line 183
    iget-object v0, p0, Lcn/nubia/camera/q/h;->l:Lcn/nubia/camera/q/o;

    iget v3, p0, Lcn/nubia/camera/q/h;->k:I

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcn/nubia/camera/q/o;->b(I)V

    .line 185
    :cond_1d
    iget-object v0, p0, Lcn/nubia/camera/q/h;->n:Lcn/nubia/camera/q/o;

    if-eqz v0, :cond_1e

    add-int/2addr v5, v7

    .line 186
    invoke-virtual {v0, v5}, Lcn/nubia/camera/q/o;->a(I)V

    :cond_1e
    if-eqz v2, :cond_42

    .line 189
    iget v0, p0, Lcn/nubia/camera/q/h;->k:I

    add-int/2addr v0, v7

    if-eqz v4, :cond_1f

    add-int v1, v7, v4

    :cond_1f
    add-int/2addr v0, v1

    .line 190
    iget-object v1, p0, Lcn/nubia/camera/q/h;->m:Lcn/nubia/camera/q/o;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/q/o;->b(I)V

    goto/16 :goto_19

    :cond_20
    if-le v10, v7, :cond_26

    if-gt v10, v9, :cond_26

    if-eqz v0, :cond_21

    move v0, v8

    goto :goto_f

    :cond_21
    move v0, v1

    :goto_f
    if-eqz v4, :cond_22

    goto :goto_10

    :cond_22
    move v8, v1

    :goto_10
    add-int/2addr v0, v8

    sub-int/2addr v9, v6

    add-int/2addr v9, v2

    .line 195
    div-int/2addr v9, v0

    if-eqz v4, :cond_23

    .line 197
    iget-object v0, p0, Lcn/nubia/camera/q/h;->l:Lcn/nubia/camera/q/o;

    iget v3, p0, Lcn/nubia/camera/q/h;->k:I

    add-int/2addr v3, v9

    invoke-virtual {v0, v3}, Lcn/nubia/camera/q/o;->b(I)V

    .line 199
    :cond_23
    iget-object v0, p0, Lcn/nubia/camera/q/h;->n:Lcn/nubia/camera/q/o;

    if-eqz v0, :cond_24

    .line 200
    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/o;->a(I)V

    :cond_24
    if-eqz v2, :cond_42

    .line 203
    iget v0, p0, Lcn/nubia/camera/q/h;->k:I

    add-int/2addr v0, v9

    if-eqz v4, :cond_25

    add-int v1, v9, v4

    :cond_25
    add-int/2addr v0, v1

    .line 204
    iget-object v1, p0, Lcn/nubia/camera/q/h;->m:Lcn/nubia/camera/q/o;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/q/o;->b(I)V

    goto/16 :goto_19

    :cond_26
    if-le v10, v9, :cond_42

    sub-int v10, v6, v3

    if-gt v10, v7, :cond_2d

    if-eqz v5, :cond_27

    move v3, v8

    goto :goto_11

    :cond_27
    move v3, v1

    :goto_11
    if-eqz v0, :cond_28

    move v6, v8

    goto :goto_12

    :cond_28
    move v6, v1

    :goto_12
    add-int/2addr v3, v6

    if-eqz v4, :cond_29

    goto :goto_13

    :cond_29
    move v8, v1

    :goto_13
    add-int/2addr v3, v8

    sub-int/2addr v7, v0

    sub-int/2addr v7, v4

    .line 211
    div-int/2addr v7, v3

    if-eqz v4, :cond_2a

    .line 213
    iget-object v0, p0, Lcn/nubia/camera/q/h;->l:Lcn/nubia/camera/q/o;

    iget v3, p0, Lcn/nubia/camera/q/h;->k:I

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcn/nubia/camera/q/o;->b(I)V

    .line 215
    :cond_2a
    iget-object v0, p0, Lcn/nubia/camera/q/h;->n:Lcn/nubia/camera/q/o;

    if-eqz v0, :cond_2b

    add-int/2addr v5, v7

    .line 216
    invoke-virtual {v0, v5}, Lcn/nubia/camera/q/o;->a(I)V

    :cond_2b
    if-eqz v2, :cond_42

    .line 219
    iget v0, p0, Lcn/nubia/camera/q/h;->k:I

    add-int/2addr v0, v7

    if-eqz v4, :cond_2c

    add-int v1, v7, v4

    :cond_2c
    add-int/2addr v0, v1

    .line 220
    iget-object v1, p0, Lcn/nubia/camera/q/h;->m:Lcn/nubia/camera/q/o;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/q/o;->b(I)V

    goto/16 :goto_19

    :cond_2d
    if-le v10, v7, :cond_33

    if-gt v10, v9, :cond_33

    if-eqz v0, :cond_2e

    move v0, v8

    goto :goto_14

    :cond_2e
    move v0, v1

    :goto_14
    if-eqz v4, :cond_2f

    goto :goto_15

    :cond_2f
    move v8, v1

    :goto_15
    add-int/2addr v0, v8

    sub-int/2addr v9, v6

    add-int/2addr v9, v3

    .line 225
    div-int/2addr v9, v0

    if-eqz v4, :cond_30

    .line 227
    iget-object v0, p0, Lcn/nubia/camera/q/h;->l:Lcn/nubia/camera/q/o;

    iget v3, p0, Lcn/nubia/camera/q/h;->k:I

    add-int/2addr v3, v9

    invoke-virtual {v0, v3}, Lcn/nubia/camera/q/o;->b(I)V

    .line 229
    :cond_30
    iget-object v0, p0, Lcn/nubia/camera/q/h;->n:Lcn/nubia/camera/q/o;

    if-eqz v0, :cond_31

    .line 230
    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/o;->a(I)V

    :cond_31
    if-eqz v2, :cond_42

    .line 233
    iget v0, p0, Lcn/nubia/camera/q/h;->k:I

    add-int/2addr v0, v9

    if-eqz v4, :cond_32

    add-int v1, v9, v4

    :cond_32
    add-int/2addr v0, v1

    .line 234
    iget-object v1, p0, Lcn/nubia/camera/q/h;->m:Lcn/nubia/camera/q/o;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/q/o;->b(I)V

    goto/16 :goto_19

    :cond_33
    if-le v10, v9, :cond_42

    sub-int/2addr v6, v4

    sub-int/2addr v6, v3

    if-gt v6, v7, :cond_39

    if-eqz v5, :cond_34

    move v3, v8

    goto :goto_16

    :cond_34
    move v3, v1

    :goto_16
    if-eqz v0, :cond_35

    goto :goto_17

    :cond_35
    move v8, v1

    :goto_17
    add-int/2addr v3, v8

    sub-int/2addr v7, v0

    .line 240
    div-int/2addr v7, v3

    .line 241
    iget-object v0, p0, Lcn/nubia/camera/q/h;->n:Lcn/nubia/camera/q/o;

    if-eqz v0, :cond_36

    add-int/2addr v5, v7

    .line 242
    invoke-virtual {v0, v5}, Lcn/nubia/camera/q/o;->a(I)V

    :cond_36
    if-eqz v4, :cond_37

    .line 245
    iget-object v0, p0, Lcn/nubia/camera/q/h;->l:Lcn/nubia/camera/q/o;

    iget v3, p0, Lcn/nubia/camera/q/h;->k:I

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcn/nubia/camera/q/o;->b(I)V

    :cond_37
    if-eqz v2, :cond_42

    .line 249
    iget v0, p0, Lcn/nubia/camera/q/h;->k:I

    add-int/2addr v0, v7

    if-eqz v4, :cond_38

    add-int v1, v7, v4

    :cond_38
    add-int/2addr v0, v1

    .line 250
    iget-object v1, p0, Lcn/nubia/camera/q/h;->m:Lcn/nubia/camera/q/o;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/q/o;->b(I)V

    goto :goto_19

    :cond_39
    if-le v6, v7, :cond_3e

    if-gt v6, v9, :cond_3e

    if-eqz v0, :cond_3a

    goto :goto_18

    :cond_3a
    move v8, v1

    :goto_18
    sub-int/2addr v9, v0

    .line 254
    div-int/2addr v9, v8

    .line 255
    iget-object v0, p0, Lcn/nubia/camera/q/h;->n:Lcn/nubia/camera/q/o;

    if-eqz v0, :cond_3b

    .line 256
    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/o;->a(I)V

    :cond_3b
    if-eqz v4, :cond_3c

    .line 260
    iget-object v0, p0, Lcn/nubia/camera/q/h;->l:Lcn/nubia/camera/q/o;

    iget v3, p0, Lcn/nubia/camera/q/h;->k:I

    add-int/2addr v3, v9

    invoke-virtual {v0, v3}, Lcn/nubia/camera/q/o;->b(I)V

    :cond_3c
    if-eqz v2, :cond_42

    .line 264
    iget v0, p0, Lcn/nubia/camera/q/h;->k:I

    add-int/2addr v0, v9

    if-eqz v4, :cond_3d

    add-int v1, v9, v4

    :cond_3d
    add-int/2addr v0, v1

    .line 265
    iget-object v1, p0, Lcn/nubia/camera/q/h;->m:Lcn/nubia/camera/q/o;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/q/o;->b(I)V

    goto :goto_19

    .line 269
    :cond_3e
    iget-object v0, p0, Lcn/nubia/camera/q/h;->n:Lcn/nubia/camera/q/o;

    if-eqz v0, :cond_3f

    .line 270
    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/o;->a(I)V

    :cond_3f
    if-eqz v4, :cond_40

    .line 273
    iget-object v0, p0, Lcn/nubia/camera/q/h;->l:Lcn/nubia/camera/q/o;

    iget v3, p0, Lcn/nubia/camera/q/h;->k:I

    invoke-virtual {v0, v3}, Lcn/nubia/camera/q/o;->b(I)V

    :cond_40
    if-eqz v2, :cond_42

    .line 276
    iget v0, p0, Lcn/nubia/camera/q/h;->k:I

    if-eqz v4, :cond_41

    move v1, v4

    :cond_41
    add-int/2addr v0, v1

    .line 277
    iget-object v1, p0, Lcn/nubia/camera/q/h;->m:Lcn/nubia/camera/q/o;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/q/o;->b(I)V

    :cond_42
    :goto_19
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcn/nubia/camera/q/h;->t:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcn/nubia/camera/q/h;->q:Z

    return-void
.end method

.method public a(ZI)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcn/nubia/camera/q/h;->o:Z

    .line 106
    iput p2, p0, Lcn/nubia/camera/q/h;->p:I

    .line 107
    invoke-virtual {p0}, Lcn/nubia/camera/q/h;->a()V

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lcn/nubia/camera/q/h;->o:Z

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcn/nubia/camera/q/h;->r:Z

    .line 55
    iput-boolean p2, p0, Lcn/nubia/camera/q/h;->s:Z

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 314
    iput-object v0, p0, Lcn/nubia/camera/q/h;->e:Landroid/view/View;

    .line 315
    iput-object v0, p0, Lcn/nubia/camera/q/h;->m:Lcn/nubia/camera/q/o;

    const/4 v1, -0x1

    .line 316
    iput v1, p0, Lcn/nubia/camera/q/h;->p:I

    .line 317
    iput-object v0, p0, Lcn/nubia/camera/q/h;->d:Landroid/view/View;

    .line 318
    iput-object v0, p0, Lcn/nubia/camera/q/h;->f:Landroid/view/View;

    .line 319
    iput-object v0, p0, Lcn/nubia/camera/q/h;->l:Lcn/nubia/camera/q/o;

    .line 320
    iput-object v0, p0, Lcn/nubia/camera/q/h;->c:Landroid/view/View;

    const/4 v0, 0x0

    .line 321
    iput-boolean v0, p0, Lcn/nubia/camera/q/h;->r:Z

    .line 322
    iput-boolean v0, p0, Lcn/nubia/camera/q/h;->s:Z

    return-void
.end method
