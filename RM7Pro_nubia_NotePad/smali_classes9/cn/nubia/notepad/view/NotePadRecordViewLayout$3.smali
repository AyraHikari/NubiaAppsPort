.class Lcn/nubia/notepad/view/NotePadRecordViewLayout$3;
.super Ljava/lang/Object;
.source "NotePadRecordViewLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/view/NotePadRecordViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .prologue
    .line 444
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$3;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$3;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->amrRecord()V

    .line 447
    return-void
.end method
