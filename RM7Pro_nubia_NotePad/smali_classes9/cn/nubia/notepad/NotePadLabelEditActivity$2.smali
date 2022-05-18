.class Lcn/nubia/notepad/NotePadLabelEditActivity$2;
.super Ljava/lang/Object;
.source "NotePadLabelEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadLabelEditActivity;->createDeleteItemsDialog()V
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
    .line 187
    iput-object p1, p0, Lcn/nubia/notepad/NotePadLabelEditActivity$2;->this$0:Lcn/nubia/notepad/NotePadLabelEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity$2;->this$0:Lcn/nubia/notepad/NotePadLabelEditActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->access$000(Lcn/nubia/notepad/NotePadLabelEditActivity;)V

    .line 191
    iget-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity$2;->this$0:Lcn/nubia/notepad/NotePadLabelEditActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->access$100(Lcn/nubia/notepad/NotePadLabelEditActivity;)V

    .line 192
    return-void
.end method
