.class Lb/a/e/a/c$b;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/e/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lb/a/e/a/c;


# direct methods
.method private constructor <init>(Lb/a/e/a/c;)V
    .locals 0

    iput-object p1, p0, Lb/a/e/a/c$b;->a:Lb/a/e/a/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/e/a/c;Lb/a/e/a/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/a/e/a/c$b;-><init>(Lb/a/e/a/c;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lb/a/e/a/c$b;->a:Lb/a/e/a/c;

    invoke-static {v0}, Lb/a/e/a/c;->b(Lb/a/e/a/c;)V

    return-void
.end method
