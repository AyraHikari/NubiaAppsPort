.class Landroidx/appcompat/app/f$f;
.super Landroidx/appcompat/app/f$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/f;

.field private final c:Landroidx/appcompat/app/l;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/f;Landroidx/appcompat/app/l;)V
    .locals 0

    .line 3242
    iput-object p1, p0, Landroidx/appcompat/app/f$f;->a:Landroidx/appcompat/app/f;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/f$e;-><init>(Landroidx/appcompat/app/f;)V

    .line 3243
    iput-object p2, p0, Landroidx/appcompat/app/f$f;->c:Landroidx/appcompat/app/l;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 3249
    iget-object v0, p0, Landroidx/appcompat/app/f$f;->c:Landroidx/appcompat/app/l;

    invoke-virtual {v0}, Landroidx/appcompat/app/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public b()V
    .locals 1

    .line 3254
    iget-object v0, p0, Landroidx/appcompat/app/f$f;->a:Landroidx/appcompat/app/f;

    invoke-virtual {v0}, Landroidx/appcompat/app/f;->t()Z

    return-void
.end method

.method c()Landroid/content/IntentFilter;
    .locals 2

    .line 3259
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    .line 3260
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 3261
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 3262
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method
