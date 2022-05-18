.class Lcn/nubia/gallery3d/app/CropImage$4;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CropImage;->showSetAsDialog()V
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

    .line 324
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$4;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 327
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$4;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/app/CropImage;->setResult(I)V

    .line 328
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$4;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/CropImage;->finish()V

    return-void
.end method
