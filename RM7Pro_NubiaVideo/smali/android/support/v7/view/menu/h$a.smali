.class Landroid/support/v7/view/menu/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/view/menu/h;->setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/h;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/view/menu/h$a;->a:Landroid/support/v7/view/menu/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/support/v7/view/menu/h$a;->a:Landroid/support/v7/view/menu/h;

    iget-object v0, p1, Landroid/support/v7/view/menu/h;->n:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/g;->F(Landroid/support/v7/view/menu/h;)V

    return-void
.end method
