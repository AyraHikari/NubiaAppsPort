.class public Lcn/nubia/collage/ui/n;
.super Lcn/nubia/collage/ui/c;
.source ""


# instance fields
.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcn/nubia/collage/ui/c;-><init>(Landroid/view/View;)V

    const v0, 0x7f08014d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/collage/ui/n;->d:Landroid/widget/RelativeLayout;

    const v0, 0x7f080152

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/collage/ui/n;->e:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public f()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/ui/n;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public g()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/ui/n;->e:Landroid/widget/TextView;

    return-object v0
.end method
