.class Lcn/nubia/gallery3d/app/CropImage$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/CropImage;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$1;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 212
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$1;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/CropImage;->access$002(Lcn/nubia/gallery3d/app/CropImage;Z)Z

    .line 213
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$1;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/CropImage;->access$102(Lcn/nubia/gallery3d/app/CropImage;Z)Z

    .line 214
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$1;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CropImage;->access$200(Lcn/nubia/gallery3d/app/CropImage;)V

    return-void
.end method
