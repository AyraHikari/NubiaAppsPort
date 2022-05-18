.class Lcn/nubia/gallery3d/app/GalleryAppBar$5;
.super Ljava/lang/Object;
.source "GalleryAppBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 265
    iput-object p1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar$5;->this$0:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 268
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar$5;->this$0:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->access$300(Lcn/nubia/gallery3d/app/GalleryAppBar;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/improve/ImproveConfig;->isSupportCategory(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 269
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar$5;->this$0:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showSortAndCaterogyDialog()V

    goto :goto_0

    .line 271
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GalleryAppBar$5;->this$0:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showSortDialog()V

    :goto_0
    return-void
.end method
