.class public Lcn/nubia/camera/dualcameracalibration/h;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lcn/nubia/camera/am/a;

.field private l:Lcn/nubia/camera/am/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->a:Landroid/view/View;

    .line 87
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->b:Landroid/widget/TextView;

    .line 88
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->c:Landroid/widget/TextView;

    .line 172
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->k:Lcn/nubia/camera/am/a;

    .line 173
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->l:Lcn/nubia/camera/am/a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/h;->a:Landroid/view/View;

    .line 87
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/h;->b:Landroid/widget/TextView;

    .line 88
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/h;->c:Landroid/widget/TextView;

    .line 172
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/h;->k:Lcn/nubia/camera/am/a;

    .line 173
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/h;->l:Lcn/nubia/camera/am/a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/dualcameracalibration/h;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/dualcameracalibration/h;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/dualcameracalibration/h;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/dualcameracalibration/h;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f090098

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->b:Landroid/widget/TextView;

    const v0, 0x7f090313

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->c:Landroid/widget/TextView;

    const v0, 0x7f090161

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->a:Landroid/view/View;

    .line 94
    new-instance v1, Lcn/nubia/camera/dualcameracalibration/h$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/dualcameracalibration/h$1;-><init>(Lcn/nubia/camera/dualcameracalibration/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09006e

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->i:Landroid/widget/TextView;

    const v0, 0x7f09006f

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/h;->j:Landroid/widget/TextView;

    .line 105
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/h;->i:Landroid/widget/TextView;

    new-instance v0, Lcn/nubia/camera/dualcameracalibration/h$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/dualcameracalibration/h$2;-><init>(Lcn/nubia/camera/dualcameracalibration/h;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/h;->j:Landroid/widget/TextView;

    new-instance v0, Lcn/nubia/camera/dualcameracalibration/h$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/dualcameracalibration/h$3;-><init>(Lcn/nubia/camera/dualcameracalibration/h;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/h;->i()V

    .line 124
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/h;->j()V

    return-void
.end method

.method public static e()Lcn/nubia/camera/dualcameracalibration/h;
    .locals 2

    .line 217
    new-instance v0, Lcn/nubia/camera/dualcameracalibration/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/dualcameracalibration/h;-><init>(I)V

    return-object v0
.end method

.method private i()V
    .locals 4

    .line 128
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->b:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f060064

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->b:Landroid/widget/TextView;

    const v3, 0x7f0f02ed

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/h;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/g;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->b:Landroid/widget/TextView;

    const v3, 0x7f0f02ee

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/h;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private j()V
    .locals 6

    .line 142
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->b:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->c:Landroid/widget/TextView;

    const v1, 0x7f0f02ef

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 147
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->O()Lcn/nubia/camera/dualcameracalibration/i;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/dualcameracalibration/i;->b()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 148
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 146
    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/dualcameracalibration/h;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private l()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->k:Lcn/nubia/camera/am/a;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcn/nubia/camera/am/a$a;

    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/h;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/am/a$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f02f7

    .line 177
    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a$a;->c(I)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v1, 0x7f0f02f6

    .line 178
    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a$a;->a(I)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v1, 0x7f0f02f5

    new-instance v2, Lcn/nubia/camera/dualcameracalibration/h$4;

    invoke-direct {v2, p0}, Lcn/nubia/camera/dualcameracalibration/h$4;-><init>(Lcn/nubia/camera/dualcameracalibration/h;)V

    .line 179
    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/am/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcn/nubia/camera/am/a$a;->a()Lcn/nubia/camera/am/a;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->k:Lcn/nubia/camera/am/a;

    .line 189
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->l:Lcn/nubia/camera/am/a;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->dismiss()V

    .line 192
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->k:Lcn/nubia/camera/am/a;

    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->show()V

    return-void
.end method

.method private m()V
    .locals 3

    .line 196
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->l:Lcn/nubia/camera/am/a;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcn/nubia/camera/am/a$a;

    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/h;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/am/a$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f02f1

    .line 198
    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a$a;->c(I)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v1, 0x7f0f02f0

    .line 199
    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a$a;->a(I)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v1, 0x7f0f02f5

    new-instance v2, Lcn/nubia/camera/dualcameracalibration/h$5;

    invoke-direct {v2, p0}, Lcn/nubia/camera/dualcameracalibration/h$5;-><init>(Lcn/nubia/camera/dualcameracalibration/h;)V

    .line 200
    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/am/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcn/nubia/camera/am/a$a;->a()Lcn/nubia/camera/am/a;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->l:Lcn/nubia/camera/am/a;

    .line 210
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->k:Lcn/nubia/camera/am/a;

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->dismiss()V

    .line 213
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->l:Lcn/nubia/camera/am/a;

    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->show()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->k:Lcn/nubia/camera/am/a;

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/h;->l()V

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->k:Lcn/nubia/camera/am/a;

    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->dismiss()V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->k:Lcn/nubia/camera/am/a;

    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->show()V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->l:Lcn/nubia/camera/am/a;

    if-nez v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/h;->m()V

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->l:Lcn/nubia/camera/am/a;

    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->dismiss()V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->l:Lcn/nubia/camera/am/a;

    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->show()V

    :goto_0
    return-void
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->d:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->onCreate(Landroid/os/Bundle;)V

    return-void

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->d:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const p3, 0x7f0c0098

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Lcn/nubia/camera/dualcameracalibration/h;->d(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->d:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void

    .line 74
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    .line 75
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->k:Lcn/nubia/camera/am/a;

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->dismiss()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->k:Lcn/nubia/camera/am/a;

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/h;->d:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    return-void

    .line 60
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->O()Lcn/nubia/camera/dualcameracalibration/i;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/dualcameracalibration/i;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/h;->l()V

    .line 64
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/h;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->O()Lcn/nubia/camera/dualcameracalibration/i;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/dualcameracalibration/i;->c()V

    :cond_1
    return-void
.end method
