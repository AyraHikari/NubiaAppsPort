.class Landroidx/appcompat/app/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/f/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/g;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/g;)V
    .locals 0

    .line 45
    iput-object p1, p0, Landroidx/appcompat/app/g$1;->a:Landroidx/appcompat/app/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Landroidx/appcompat/app/g$1;->a:Landroidx/appcompat/app/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/g;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
