.class Lcn/nubia/gallery3d/app/GalleryActionBar$1;
.super Ljava/lang/Object;
.source "GalleryActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/GalleryActionBar;->setLinstener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/GalleryActionBar;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/GalleryActionBar;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcn/nubia/gallery3d/app/GalleryActionBar$1;->this$0:Lcn/nubia/gallery3d/app/GalleryActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 139
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GalleryActionBar$1;->this$0:Lcn/nubia/gallery3d/app/GalleryActionBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryActionBar;->goCameraView()V

    .line 140
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GalleryActionBar$1;->this$0:Lcn/nubia/gallery3d/app/GalleryActionBar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/GalleryActionBar;->access$002(Lcn/nubia/gallery3d/app/GalleryActionBar;I)I

    return-void
.end method
