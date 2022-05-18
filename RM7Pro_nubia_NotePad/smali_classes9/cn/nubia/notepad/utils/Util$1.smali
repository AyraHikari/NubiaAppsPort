.class final Lcn/nubia/notepad/utils/Util$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/utils/Util;->updateLabelDataBase(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 847
    iput-object p1, p0, Lcn/nubia/notepad/utils/Util$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcn/nubia/notepad/utils/Util$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/notepad/utils/Util;->access$000(Landroid/content/Context;)V

    .line 853
    iget-object v0, p0, Lcn/nubia/notepad/utils/Util$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/notepad/utils/Util;->updateDafaultTip(Landroid/content/Context;)V

    .line 854
    iget-object v0, p0, Lcn/nubia/notepad/utils/Util$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/notepad/utils/Util;->updateWidget(Landroid/content/Context;)V

    .line 855
    return-void
.end method
