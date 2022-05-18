.class Landroidx/e/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/e/d;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/e/d;


# direct methods
.method constructor <init>(Landroidx/e/d;)V
    .locals 0

    .line 698
    iput-object p1, p0, Landroidx/e/d$1;->a:Landroidx/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 702
    :try_start_0
    iget-object v0, p0, Landroidx/e/d$1;->a:Landroidx/e/d;

    invoke-virtual {v0}, Landroidx/e/d;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
