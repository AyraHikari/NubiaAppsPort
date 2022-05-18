.class public final synthetic Lcom/zte/camera/b/-$$Lambda$b$jNmNAQPBd2l5VIqaZfRSmXZqmOA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/zte/camera/b/b;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/zte/camera/b/b;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/camera/b/-$$Lambda$b$jNmNAQPBd2l5VIqaZfRSmXZqmOA;->f$0:Lcom/zte/camera/b/b;

    iput-object p2, p0, Lcom/zte/camera/b/-$$Lambda$b$jNmNAQPBd2l5VIqaZfRSmXZqmOA;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zte/camera/b/-$$Lambda$b$jNmNAQPBd2l5VIqaZfRSmXZqmOA;->f$0:Lcom/zte/camera/b/b;

    iget-object v1, p0, Lcom/zte/camera/b/-$$Lambda$b$jNmNAQPBd2l5VIqaZfRSmXZqmOA;->f$1:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/zte/camera/b/b;->lambda$jNmNAQPBd2l5VIqaZfRSmXZqmOA(Lcom/zte/camera/b/b;Landroid/net/Uri;)V

    return-void
.end method
