.class Lcn/nubia/music/utils/CtsManager$2;
.super Ljava/lang/Object;
.source "CtsManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/utils/CtsManager;->showWarningDialog(Ljava/lang/StringBuffer;Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

.field final synthetic b:Lcn/nubia/music/utils/CtsManager;


# direct methods
.method constructor <init>(Lcn/nubia/music/utils/CtsManager;Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcn/nubia/music/utils/CtsManager$2;->b:Lcn/nubia/music/utils/CtsManager;

    iput-object p2, p0, Lcn/nubia/music/utils/CtsManager$2;->a:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcn/nubia/music/utils/CtsManager$2;->a:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcn/nubia/music/utils/CtsManager$2;->a:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

    invoke-interface {v0}, Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;->onCancel()V

    .line 95
    :cond_0
    return-void
.end method
