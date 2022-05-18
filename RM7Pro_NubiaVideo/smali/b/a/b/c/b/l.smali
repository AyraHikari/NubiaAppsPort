.class public Lb/a/b/c/b/l;
.super Lb/a/b/c/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/c/b/l$d;,
        Lb/a/b/c/b/l$c;
    }
.end annotation


# instance fields
.field private c:Z

.field private d:Z

.field private e:I

.field private f:[Lb/a/b/c/b/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/a/b/c/b/f;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lb/a/b/c/b/e;-><init>(Landroid/content/Context;Lb/a/b/c/b/f;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lb/a/b/c/b/l;->f:[Lb/a/b/c/b/m;

    .line 3
    iput-boolean p4, p0, Lb/a/b/c/b/l;->d:Z

    .line 4
    iput-boolean p3, p0, Lb/a/b/c/b/l;->c:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lb/a/b/c/b/l;->e:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lb/a/b/c/b/l;->e:I

    :goto_0
    return-void
.end method

.method static synthetic a(Lb/a/b/c/b/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/b/c/b/l;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/e;->b:Lb/a/b/c/b/f;

    invoke-virtual {v0}, Lb/a/b/c/b/f;->y()Lb/a/b/c/b/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lb/a/b/c/b/m;->r()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lb/a/b/c/b/m;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v2, "video_list_start_player"

    .line 4
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lb/a/b/c/b/e;->a:Landroid/content/Context;

    const-class v2, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lb/a/b/c/b/e;->a:Landroid/content/Context;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/l;->f:[Lb/a/b/c/b/m;

    array-length v0, v0

    const/4 v1, 0x0

    if-le v0, p1, :cond_2

    move v0, v1

    move v2, v0

    .line 2
    :goto_0
    iget-object v3, p0, Lb/a/b/c/b/l;->f:[Lb/a/b/c/b/m;

    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 3
    aget-object v3, v3, v0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p1, 0x1

    if-ne v2, v3, :cond_1

    move v1, v0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v1
.end method

.method public getCount()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lb/a/b/c/b/l;->d:Z

    if-eqz v0, :cond_2

    .line 2
    invoke-super {p0}, Lb/a/b/c/b/e;->getCount()I

    move-result v0

    new-array v0, v0, [Lb/a/b/c/b/m;

    iput-object v0, p0, Lb/a/b/c/b/l;->f:[Lb/a/b/c/b/m;

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    invoke-super {p0}, Lb/a/b/c/b/e;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lb/a/b/c/b/l;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lb/a/b/c/b/l;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/b/c/b/m;

    invoke-virtual {v2}, Lb/a/b/c/b/m;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lb/a/b/d/e;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lb/a/b/c/b/l;->f:[Lb/a/b/c/b/m;

    invoke-virtual {p0, v0}, Lb/a/b/c/b/l;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/a/b/c/b/m;

    aput-object v3, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6
    :cond_0
    iget-object v2, p0, Lb/a/b/c/b/l;->f:[Lb/a/b/c/b/m;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 7
    :cond_2
    invoke-super {p0}, Lb/a/b/c/b/e;->getCount()I

    move-result v0

    iget v1, p0, Lb/a/b/c/b/l;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb/a/b/c/b/e;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-boolean p1, p0, Lb/a/b/c/b/l;->c:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lb/a/b/c/b/l;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0030

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance p3, Lb/a/b/c/b/l$c;

    invoke-direct {p3, p0}, Lb/a/b/c/b/l$c;-><init>(Lb/a/b/c/b/l;)V

    const v0, 0x7f090097

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lb/a/b/c/b/l$c;->a:Landroid/widget/TextView;

    const v0, 0x7f090096

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lb/a/b/c/b/l$c;->b:Landroid/widget/TextView;

    const v0, 0x7f090094

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lb/a/b/c/b/l$c;->c:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lb/a/b/c/b/l$c;

    const/4 v0, 0x0

    .line 10
    iget-boolean v1, p0, Lb/a/b/c/b/l;->d:Z

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Lb/a/b/c/b/l;->f:[Lb/a/b/c/b/m;

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {p0, p1}, Lb/a/b/c/b/l;->b(I)I

    move-result v0

    iget v3, p0, Lb/a/b/c/b/l;->e:I

    sub-int/2addr v0, v3

    aget-object v0, v1, v0

    goto :goto_0

    .line 13
    :cond_1
    iget v0, p0, Lb/a/b/c/b/l;->e:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lb/a/b/c/b/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/b/c/b/m;

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 14
    iget-object v1, p3, Lb/a/b/c/b/l$c;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lb/a/b/c/b/m;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v1, p3, Lb/a/b/c/b/l$c;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lb/a/b/c/b/e;->a:Landroid/content/Context;

    .line 16
    invoke-virtual {v0}, Lb/a/b/c/b/m;->m()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 17
    invoke-static {v3, v0}, Lb/a/b/d/e;->i(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :cond_3
    iget-boolean v0, p0, Lb/a/b/c/b/l;->d:Z

    if-eqz v0, :cond_4

    .line 19
    iget-object v0, p0, Lb/a/b/c/b/e;->b:Lb/a/b/c/b/f;

    invoke-virtual {p0, p1}, Lb/a/b/c/b/l;->b(I)I

    move-result p1

    iget v1, p0, Lb/a/b/c/b/l;->e:I

    sub-int/2addr p1, v1

    iget-object p3, p3, Lb/a/b/c/b/l$c;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, p1, p3}, Lb/a/b/c/b/f;->D(IILandroid/widget/ImageView;)V

    goto :goto_1

    .line 20
    :cond_4
    iget-object v0, p0, Lb/a/b/c/b/e;->b:Lb/a/b/c/b/f;

    iget v1, p0, Lb/a/b/c/b/l;->e:I

    sub-int/2addr p1, v1

    iget-object p3, p3, Lb/a/b/c/b/l$c;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, p1, p3}, Lb/a/b/c/b/f;->D(IILandroid/widget/ImageView;)V

    :goto_1
    return-object p2

    :cond_5
    if-nez p2, :cond_6

    .line 21
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c002c

    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 22
    new-instance p1, Lb/a/b/c/b/l$d;

    invoke-direct {p1, p0}, Lb/a/b/c/b/l$d;-><init>(Lb/a/b/c/b/l;)V

    const p3, 0x7f09009a

    .line 23
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p1, Lb/a/b/c/b/l$d;->c:Landroid/widget/ImageView;

    const p3, 0x7f09009b

    .line 24
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    iput-object p3, p1, Lb/a/b/c/b/l$d;->d:Landroid/widget/ImageView;

    const p3, 0x7f09009d

    .line 25
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p1, Lb/a/b/c/b/l$d;->a:Landroid/widget/TextView;

    const p3, 0x7f09009c

    .line 26
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p1, Lb/a/b/c/b/l$d;->b:Landroid/widget/TextView;

    .line 27
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 28
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/a/b/c/b/l$d;

    .line 29
    iget-object p3, p1, Lb/a/b/c/b/l$d;->d:Landroid/widget/ImageView;

    new-instance v0, Lb/a/b/c/b/l$a;

    invoke-direct {v0, p0}, Lb/a/b/c/b/l$a;-><init>(Lb/a/b/c/b/l;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    new-instance p3, Lb/a/b/c/b/l$b;

    invoke-direct {p3, p0}, Lb/a/b/c/b/l$b;-><init>(Lb/a/b/c/b/l;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p3, p0, Lb/a/b/c/b/e;->b:Lb/a/b/c/b/f;

    invoke-virtual {p3}, Lb/a/b/c/b/f;->y()Lb/a/b/c/b/m;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 32
    iget-object v0, p0, Lb/a/b/c/b/e;->a:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 33
    iget-object v0, p1, Lb/a/b/c/b/l$d;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Lb/a/b/c/b/m;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p1, Lb/a/b/c/b/l$d;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lb/a/b/c/b/e;->a:Landroid/content/Context;

    .line 35
    invoke-virtual {p3}, Lb/a/b/c/b/m;->m()I

    move-result p3

    div-int/lit16 p3, p3, 0x3e8

    .line 36
    invoke-static {v1, p3}, Lb/a/b/d/e;->i(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p3, p0, Lb/a/b/c/b/e;->b:Lb/a/b/c/b/f;

    iget-object p1, p1, Lb/a/b/c/b/l$d;->c:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Lb/a/b/c/b/f;->C(Landroid/widget/ImageView;)V

    :cond_7
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
