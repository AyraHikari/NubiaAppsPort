.class public Lcn/nubia/camera/clone/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcn/nubia/camera/clone/m;->a:Landroid/content/Context;

    .line 18
    iput-object v0, p0, Lcn/nubia/camera/clone/m;->b:Landroid/widget/LinearLayout;

    .line 19
    iput-object v0, p0, Lcn/nubia/camera/clone/m;->c:Landroid/widget/ImageView;

    .line 20
    iput-object v0, p0, Lcn/nubia/camera/clone/m;->d:Landroid/widget/TextView;

    .line 21
    iput-object v0, p0, Lcn/nubia/camera/clone/m;->e:Landroid/widget/LinearLayout;

    .line 22
    iput-object v0, p0, Lcn/nubia/camera/clone/m;->f:Landroid/widget/ImageView;

    .line 23
    iput-object v0, p0, Lcn/nubia/camera/clone/m;->g:Landroid/widget/TextView;

    .line 26
    iput-object p2, p0, Lcn/nubia/camera/clone/m;->a:Landroid/content/Context;

    const p2, 0x7f09010b

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcn/nubia/camera/clone/m;->b:Landroid/widget/LinearLayout;

    const p2, 0x7f09010c

    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcn/nubia/camera/clone/m;->c:Landroid/widget/ImageView;

    const p2, 0x7f09010d

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/camera/clone/m;->d:Landroid/widget/TextView;

    const p2, 0x7f0900b5

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcn/nubia/camera/clone/m;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f0900b6

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcn/nubia/camera/clone/m;->f:Landroid/widget/ImageView;

    const p2, 0x7f0900b7

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/clone/m;->g:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p0}, Lcn/nubia/camera/clone/m;->a()V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0800da

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 45
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->c:Landroid/widget/ImageView;

    const v1, 0x7f0800d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/camera/clone/m;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0800d9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 50
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->f:Landroid/widget/ImageView;

    const v1, 0x7f0800d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/camera/clone/m;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, v0}, Lcn/nubia/camera/clone/m;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0800d9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 58
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->c:Landroid/widget/ImageView;

    const v1, 0x7f0800d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/camera/clone/m;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0800da

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 63
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->f:Landroid/widget/ImageView;

    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/camera/clone/m;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    .line 66
    invoke-direct {p0, v0}, Lcn/nubia/camera/clone/m;->a(Z)V

    return-void
.end method

.method public c()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0800d8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 71
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->c:Landroid/widget/ImageView;

    const v2, 0x7f0800d3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/camera/clone/m;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 76
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->f:Landroid/widget/ImageView;

    const v1, 0x7f0800cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/clone/m;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/camera/clone/m;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, v0}, Lcn/nubia/camera/clone/m;->a(Z)V

    return-void
.end method
