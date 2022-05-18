.class Lcn/nubia/gallery3d/app/Wallpaper$2;
.super Ljava/lang/Object;
.source "Wallpaper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/Wallpaper;->createPermissionDialogForCTA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/Wallpaper;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/Wallpaper;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcn/nubia/gallery3d/app/Wallpaper$2;->this$0:Lcn/nubia/gallery3d/app/Wallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "Wallpaper"

    const-string v0, "requestPackagePermission result<0"

    .line 172
    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p1, p0, Lcn/nubia/gallery3d/app/Wallpaper$2;->this$0:Lcn/nubia/gallery3d/app/Wallpaper;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/Wallpaper;->access$000(Lcn/nubia/gallery3d/app/Wallpaper;)V

    .line 174
    iget-object p1, p0, Lcn/nubia/gallery3d/app/Wallpaper$2;->this$0:Lcn/nubia/gallery3d/app/Wallpaper;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/Wallpaper;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->setPermissionDialog()V

    .line 175
    iget-object p1, p0, Lcn/nubia/gallery3d/app/Wallpaper$2;->this$0:Lcn/nubia/gallery3d/app/Wallpaper;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/Wallpaper;->access$100(Lcn/nubia/gallery3d/app/Wallpaper;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Lcn/nubia/gallery3d/app/Wallpaper$2;->this$0:Lcn/nubia/gallery3d/app/Wallpaper;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/Wallpaper;->access$100(Lcn/nubia/gallery3d/app/Wallpaper;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcn/nubia/gallery3d/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    .line 178
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/Wallpaper$2;->this$0:Lcn/nubia/gallery3d/app/Wallpaper;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/Wallpaper;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 179
    iget-object p1, p0, Lcn/nubia/gallery3d/app/Wallpaper$2;->this$0:Lcn/nubia/gallery3d/app/Wallpaper;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/Wallpaper;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->setUpBatteryListener()Lcn/nubia/improve/category/BatteryListener;

    :cond_1
    return-void
.end method
