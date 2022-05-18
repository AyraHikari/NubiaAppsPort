.class Lcn/nubia/gallery3d/app/AbstractGalleryActivity$3;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->createPermissionDialogForCTA(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$3;->this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 268
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$3;->this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->finish()V

    return-void
.end method
