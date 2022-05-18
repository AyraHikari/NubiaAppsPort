.class Lcn/nubia/collage/CollageActivity$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/CollageActivity;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/CollageActivity;


# direct methods
.method constructor <init>(Lcn/nubia/collage/CollageActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/CollageActivity$i;->a:Lcn/nubia/collage/CollageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$i;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->s(Lcn/nubia/collage/CollageActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$i;->a:Lcn/nubia/collage/CollageActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/collage/CollageActivity;->t(Lcn/nubia/collage/CollageActivity;Z)V

    :cond_0
    return-void
.end method
