.class public Lcn/nubia/app/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/content/res/Resources;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/app/c;->e:I

    iput v0, p0, Lcn/nubia/app/c;->f:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/app/c;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/app/c;->d:Landroid/content/res/Resources;

    iput-object p2, p0, Lcn/nubia/app/c;->c:Landroid/view/ViewGroup;

    iput p3, p0, Lcn/nubia/app/c;->e:I

    iput p4, p0, Lcn/nubia/app/c;->f:I

    invoke-direct {p0}, Lcn/nubia/app/c;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcn/nubia/app/c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/app/c;->a:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcn/nubia/app/c;->d:Landroid/content/res/Resources;

    const v2, 0x7f070181

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v3, p0, Lcn/nubia/app/c;->d:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcn/nubia/app/c;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/nubia/app/c;->a:Landroid/view/View;

    iget v1, p0, Lcn/nubia/app/c;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    iget-object v0, p0, Lcn/nubia/app/c;->a:Landroid/view/View;

    iget v1, p0, Lcn/nubia/app/c;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/app/c;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/app/c;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/nubia/app/c;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/app/c;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcn/nubia/app/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_0
    iget-object v0, p0, Lcn/nubia/app/c;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/app/c;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcn/nubia/app/c;->a:Landroid/view/View;

    const v1, 0x7f0801a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
