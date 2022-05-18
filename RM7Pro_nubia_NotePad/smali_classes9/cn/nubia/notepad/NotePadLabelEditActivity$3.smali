.class Lcn/nubia/notepad/NotePadLabelEditActivity$3;
.super Ljava/lang/Object;
.source "NotePadLabelEditActivity.java"

# interfaces
.implements Lcn/nubia/notepad/view/NotePadLabelNameInputDialog$OnFinishFileNameInputListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadLabelEditActivity;->renameLabel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadLabelEditActivity;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadLabelEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadLabelEditActivity;

    .prologue
    .line 226
    iput-object p1, p0, Lcn/nubia/notepad/NotePadLabelEditActivity$3;->this$0:Lcn/nubia/notepad/NotePadLabelEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishFileNameInput(Ljava/lang/String;)V
    .locals 2
    .param p1, "newLabelName"    # Ljava/lang/String;

    .prologue
    .line 230
    :try_start_0
    iget-object v1, p0, Lcn/nubia/notepad/NotePadLabelEditActivity$3;->this$0:Lcn/nubia/notepad/NotePadLabelEditActivity;

    invoke-static {v1, p1}, Lcn/nubia/notepad/NotePadLabelEditActivity;->access$200(Lcn/nubia/notepad/NotePadLabelEditActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
