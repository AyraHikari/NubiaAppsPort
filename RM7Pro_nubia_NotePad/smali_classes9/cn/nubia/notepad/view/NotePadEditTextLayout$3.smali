.class Lcn/nubia/notepad/view/NotePadEditTextLayout$3;
.super Ljava/lang/Object;
.source "NotePadEditTextLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/view/NotePadEditTextLayout;->createOptionMenu(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/view/NotePadEditTextLayout;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/view/NotePadEditTextLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .prologue
    .line 713
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$3;->this$0:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 716
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 717
    return-void
.end method
