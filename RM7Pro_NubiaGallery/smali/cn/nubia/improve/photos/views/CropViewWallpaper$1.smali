.class Lcn/nubia/improve/photos/views/CropViewWallpaper$1;
.super Ljava/lang/Object;
.source "CropViewWallpaper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/photos/views/CropViewWallpaper;->moveToLeft()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/photos/views/CropViewWallpaper;


# direct methods
.method constructor <init>(Lcn/nubia/improve/photos/views/CropViewWallpaper;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper$1;->this$0:Lcn/nubia/improve/photos/views/CropViewWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper$1;->this$0:Lcn/nubia/improve/photos/views/CropViewWallpaper;

    invoke-virtual {v0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->moveToLeft()V

    .line 230
    iget-object v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper$1;->this$0:Lcn/nubia/improve/photos/views/CropViewWallpaper;

    invoke-virtual {v0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
