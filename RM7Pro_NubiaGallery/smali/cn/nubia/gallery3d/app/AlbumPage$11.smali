.class Lcn/nubia/gallery3d/app/AlbumPage$11;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AlbumPage;->updateAppBars()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/AlbumPage;)V
    .locals 0

    .line 1130
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$11;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1133
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$11;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    return-void
.end method
