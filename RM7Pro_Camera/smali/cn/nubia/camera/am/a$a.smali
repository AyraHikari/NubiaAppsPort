.class public Lcn/nubia/camera/am/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/am/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/content/DialogInterface$OnClickListener;

.field private i:Landroid/content/DialogInterface$OnClickListener;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcn/nubia/camera/am/a$a;->d:I

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcn/nubia/camera/am/a$a;->j:Z

    .line 68
    iput-boolean v0, p0, Lcn/nubia/camera/am/a$a;->k:Z

    .line 71
    iput-object p1, p0, Lcn/nubia/camera/am/a$a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/am/a$a;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/camera/am/a$a;->h:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/am/a$a;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/camera/am/a$a;->i:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcn/nubia/camera/am/a$a;
    .locals 1

    .line 80
    iget-object v0, p0, Lcn/nubia/camera/am/a$a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/camera/am/a$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;
    .locals 1

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/am/a$a;->a:Landroid/content/Context;

    .line 118
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/camera/am/a$a;->f:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Lcn/nubia/camera/am/a$a;->h:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcn/nubia/camera/am/a$a;
    .locals 0

    .line 85
    iput-object p1, p0, Lcn/nubia/camera/am/a$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcn/nubia/camera/am/a$a;
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcn/nubia/camera/am/a$a;->j:Z

    return-object p0
.end method

.method public a()Lcn/nubia/camera/am/a;
    .locals 9

    .line 132
    iget-object v0, p0, Lcn/nubia/camera/am/a$a;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 135
    iget-boolean v1, p0, Lcn/nubia/camera/am/a$a;->j:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v1, 0x7f0c0039

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v1, 0x7f0c0038

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 140
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 141
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 142
    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 143
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 144
    new-instance v4, Lcn/nubia/camera/am/a;

    iget-object v5, p0, Lcn/nubia/camera/am/a$a;->a:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Lcn/nubia/camera/am/a;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f090331

    .line 146
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 147
    iget-object v5, p0, Lcn/nubia/camera/am/a$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-boolean v5, p0, Lcn/nubia/camera/am/a$a;->k:Z

    if-eqz v5, :cond_1

    const v5, -0xdadae

    .line 149
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41700000    # 15.0f

    .line 150
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 151
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 152
    iget-object v5, p0, Lcn/nubia/camera/am/a$a;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700ff

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 153
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 156
    :cond_1
    iget-object v3, p0, Lcn/nubia/camera/am/a$a;->f:Ljava/lang/String;

    const/16 v5, 0x8

    const v6, 0x7f090255

    if-eqz v3, :cond_2

    .line 157
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v7, p0, Lcn/nubia/camera/am/a$a;->f:Ljava/lang/String;

    .line 158
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v3, p0, Lcn/nubia/camera/am/a$a;->h:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_3

    .line 160
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v7, Lcn/nubia/camera/am/a$a$1;

    invoke-direct {v7, p0, v4}, Lcn/nubia/camera/am/a$a$1;-><init>(Lcn/nubia/camera/am/a$a;Lcn/nubia/camera/am/a;)V

    .line 161
    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :cond_3
    :goto_1
    iget-object v3, p0, Lcn/nubia/camera/am/a$a;->g:Ljava/lang/String;

    const v7, 0x7f09021d

    if-eqz v3, :cond_4

    .line 175
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v8, p0, Lcn/nubia/camera/am/a$a;->g:Ljava/lang/String;

    .line 176
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v3, p0, Lcn/nubia/camera/am/a$a;->i:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_5

    .line 178
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v8, Lcn/nubia/camera/am/a$a$2;

    invoke-direct {v8, p0, v4}, Lcn/nubia/camera/am/a$a$2;-><init>(Lcn/nubia/camera/am/a$a;Lcn/nubia/camera/am/a;)V

    .line 179
    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 188
    :cond_4
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :cond_5
    :goto_2
    iget-object v3, p0, Lcn/nubia/camera/am/a$a;->g:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v8, p0, Lcn/nubia/camera/am/a$a;->f:Ljava/lang/String;

    if-nez v8, :cond_6

    .line 194
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    goto :goto_3

    .line 195
    :cond_6
    iget-object v7, p0, Lcn/nubia/camera/am/a$a;->f:Ljava/lang/String;

    if-eqz v7, :cond_7

    if-nez v3, :cond_7

    .line 196
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    .line 199
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 200
    iget-object v3, p0, Lcn/nubia/camera/am/a$a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0700c4

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 203
    :cond_8
    iget-object v2, p0, Lcn/nubia/camera/am/a$a;->c:Ljava/lang/String;

    const v3, 0x7f0901f0

    if-eqz v2, :cond_9

    .line 204
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 205
    iget-object v3, p0, Lcn/nubia/camera/am/a$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget v3, p0, Lcn/nubia/camera/am/a$a;->d:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_a

    .line 207
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_4

    .line 211
    :cond_9
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 214
    :cond_a
    :goto_4
    iget-boolean v2, p0, Lcn/nubia/camera/am/a$a;->j:Z

    if-nez v2, :cond_b

    iget v2, p0, Lcn/nubia/camera/am/a$a;->e:I

    if-lez v2, :cond_b

    const v2, 0x7f090046

    .line 215
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 216
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iget v3, p0, Lcn/nubia/camera/am/a$a;->e:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 218
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_b
    const v2, 0x1020016

    .line 221
    invoke-virtual {v4, v2}, Lcn/nubia/camera/am/a;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 223
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :cond_c
    invoke-virtual {v4}, Lcn/nubia/camera/am/a;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 227
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 228
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 230
    :cond_d
    invoke-virtual {v4, v0}, Lcn/nubia/camera/am/a;->setContentView(Landroid/view/View;)V

    return-object v4
.end method

.method public b(I)Lcn/nubia/camera/am/a$a;
    .locals 0

    .line 90
    iput p1, p0, Lcn/nubia/camera/am/a$a;->d:I

    return-object p0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;
    .locals 1

    .line 125
    iget-object v0, p0, Lcn/nubia/camera/am/a$a;->a:Landroid/content/Context;

    .line 126
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/camera/am/a$a;->g:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcn/nubia/camera/am/a$a;->i:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcn/nubia/camera/am/a$a;
    .locals 0

    .line 100
    iput-object p1, p0, Lcn/nubia/camera/am/a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcn/nubia/camera/am/a$a;
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcn/nubia/camera/am/a$a;->k:Z

    return-object p0
.end method

.method public c(I)Lcn/nubia/camera/am/a$a;
    .locals 1

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/am/a$a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/camera/am/a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(I)Lcn/nubia/camera/am/a$a;
    .locals 0

    .line 106
    iput p1, p0, Lcn/nubia/camera/am/a$a;->e:I

    return-object p0
.end method
