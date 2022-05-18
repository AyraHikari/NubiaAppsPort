.class Lb/a/a/a/a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/a/a;


# direct methods
.method constructor <init>(Lb/a/a/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/a/a$a;->a:Lb/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    iget-object v0, p0, Lb/a/a/a/a$a;->a:Lb/a/a/a/a;

    invoke-static {v0}, Lb/a/a/a/a;->c(Lb/a/a/a/a;)V

    return-void
.end method
