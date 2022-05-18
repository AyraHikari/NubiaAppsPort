.class Lcn/nubia/gallery3d/app/Wallpaper$1;
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

    .line 143
    iput-object p1, p0, Lcn/nubia/gallery3d/app/Wallpaper$1;->this$0:Lcn/nubia/gallery3d/app/Wallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 146
    iget-object p1, p0, Lcn/nubia/gallery3d/app/Wallpaper$1;->this$0:Lcn/nubia/gallery3d/app/Wallpaper;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/Wallpaper;->finish()V

    return-void
.end method
