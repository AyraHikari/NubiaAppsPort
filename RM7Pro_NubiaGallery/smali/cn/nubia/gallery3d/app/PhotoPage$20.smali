.class Lcn/nubia/gallery3d/app/PhotoPage$20;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/DetailsHelper$CloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/PhotoPage;->showDetails(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 1641
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$20;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .line 1644
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$20;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$402(Lcn/nubia/gallery3d/app/PhotoPage;Z)Z

    return-void
.end method
