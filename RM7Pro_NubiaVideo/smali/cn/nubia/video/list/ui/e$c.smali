.class Lcn/nubia/video/list/ui/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/list/ui/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/list/ui/e;


# direct methods
.method private constructor <init>(Lcn/nubia/video/list/ui/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/ui/e$c;->a:Lcn/nubia/video/list/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/video/list/ui/e;Lcn/nubia/video/list/ui/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/nubia/video/list/ui/e$c;-><init>(Lcn/nubia/video/list/ui/e;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 p2, 0x50

    if-lt p1, p2, :cond_0

    .line 2
    new-instance p1, Lcn/nubia/video/player/p;

    iget-object p2, p0, Lcn/nubia/video/list/ui/e$c;->a:Lcn/nubia/video/list/ui/e;

    invoke-static {p2}, Lcn/nubia/video/list/ui/e;->c(Lcn/nubia/video/list/ui/e;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcn/nubia/video/player/p;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f004c

    invoke-virtual {p1, p2}, Lcn/nubia/video/player/p;->g(I)V

    :cond_0
    return-void
.end method
