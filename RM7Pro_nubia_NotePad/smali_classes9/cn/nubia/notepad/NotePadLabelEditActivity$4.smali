.class Lcn/nubia/notepad/NotePadLabelEditActivity$4;
.super Ljava/lang/Object;
.source "NotePadLabelEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/NotePadLabelEditActivity;
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
    .line 375
    iput-object p1, p0, Lcn/nubia/notepad/NotePadLabelEditActivity$4;->this$0:Lcn/nubia/notepad/NotePadLabelEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 378
    iget-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity$4;->this$0:Lcn/nubia/notepad/NotePadLabelEditActivity;

    invoke-virtual {v0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->selectAllOrNone()V

    .line 379
    return-void
.end method
