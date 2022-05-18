.class Lcn/nubia/gallery3d/app/GalleryAppBar$2;
.super Ljava/lang/Object;
.source "GalleryAppBar.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/GalleryTabLayout$OnTabClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/GalleryAppBar;->initTabLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/GalleryAppBar;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/GalleryAppBar;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar$2;->this$0:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar$2;->this$0:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->access$000(Lcn/nubia/gallery3d/app/GalleryAppBar;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppBar$2;->this$0:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->access$100(Lcn/nubia/gallery3d/app/GalleryAppBar;)V

    return-void
.end method
