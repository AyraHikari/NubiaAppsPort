.class Lcn/nubia/collage/ui/CollageShareActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/ui/CollageShareActivity;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/ui/CollageShareActivity;


# direct methods
.method constructor <init>(Lcn/nubia/collage/ui/CollageShareActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity$a;->a:Lcn/nubia/collage/ui/CollageShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageShareActivity$a;->a:Lcn/nubia/collage/ui/CollageShareActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
