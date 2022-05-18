.class Landroidx/activity/ComponentActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/activity/b;


# direct methods
.method constructor <init>(Landroidx/activity/b;)V
    .locals 0

    .line 108
    iput-object p1, p0, Landroidx/activity/ComponentActivity$3;->a:Landroidx/activity/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V
    .locals 0

    .line 112
    sget-object p1, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    if-ne p2, p1, :cond_0

    .line 113
    iget-object p1, p0, Landroidx/activity/ComponentActivity$3;->a:Landroidx/activity/b;

    invoke-virtual {p1}, Landroidx/activity/b;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_0

    .line 114
    iget-object p1, p0, Landroidx/activity/ComponentActivity$3;->a:Landroidx/activity/b;

    invoke-virtual {p1}, Landroidx/activity/b;->c()Landroidx/lifecycle/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/s;->a()V

    :cond_0
    return-void
.end method
