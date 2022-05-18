.class Lcn/nubia/commonui/actionbar/widget/Toolbar$2;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/widget/Toolbar;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$2;->a:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$2;->a:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->showOverflowMenu()Z

    .line 182
    return-void
.end method
