.class Lcn/nubia/gallery3d/commonui/ui/BaseDialog$2;
.super Ljava/lang/Object;
.source "BaseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/commonui/ui/BaseDialog;->setOnBackUsable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/commonui/ui/BaseDialog;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/commonui/ui/BaseDialog;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcn/nubia/gallery3d/commonui/ui/BaseDialog$2;->this$0:Lcn/nubia/gallery3d/commonui/ui/BaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 78
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
