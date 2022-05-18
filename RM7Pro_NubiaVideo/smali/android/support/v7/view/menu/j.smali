.class Landroid/support/v7/view/menu/j;
.super Landroid/support/v7/view/menu/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/j$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/view/menu/i;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V

    return-void
.end method


# virtual methods
.method f(Landroid/view/ActionProvider;)Landroid/support/v7/view/menu/i$a;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v7/view/menu/j$a;

    iget-object v1, p0, Landroid/support/v7/view/menu/c;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Landroid/support/v7/view/menu/j$a;-><init>(Landroid/support/v7/view/menu/j;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method
