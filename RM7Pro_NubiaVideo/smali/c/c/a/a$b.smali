.class Lc/c/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/c/a/e/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/a;-><init>(Lc/c/a/e/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/c/a/a;


# direct methods
.method constructor <init>(Lc/c/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/a$b;->a:Lc/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILc/c/a/e/a;Lc/c/a/g/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/a$b;->a:Lc/c/a/a;

    invoke-interface {p3, p1, p2, v0}, Lc/c/a/g/c;->d(ILc/c/a/e/a;Lc/c/a/b;)V

    return-void
.end method
