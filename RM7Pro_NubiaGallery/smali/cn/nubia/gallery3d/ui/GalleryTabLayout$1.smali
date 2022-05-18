.class Lcn/nubia/gallery3d/ui/GalleryTabLayout$1;
.super Ljava/lang/Object;
.source "GalleryTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/GalleryTabLayout;->setTabOnClickListener(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/GalleryTabLayout;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/GalleryTabLayout;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout$1;->this$0:Lcn/nubia/gallery3d/ui/GalleryTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout$1;->this$0:Lcn/nubia/gallery3d/ui/GalleryTabLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->setTabChecked(I)V

    return-void
.end method
