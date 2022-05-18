.class Landroidx/g/a/b;
.super Landroidx/g/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/g/a/b$c;,
        Landroidx/g/a/b$b;,
        Landroidx/g/a/b$a;
    }
.end annotation


# static fields
.field static a:Z = false


# instance fields
.field private final b:Landroidx/lifecycle/h;

.field private final c:Landroidx/g/a/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroidx/lifecycle/h;Landroidx/lifecycle/s;)V
    .locals 0

    .line 371
    invoke-direct {p0}, Landroidx/g/a/a;-><init>()V

    .line 372
    iput-object p1, p0, Landroidx/g/a/b;->b:Landroidx/lifecycle/h;

    .line 373
    invoke-static {p2}, Landroidx/g/a/b$c;->a(Landroidx/lifecycle/s;)Landroidx/g/a/b$c;

    move-result-object p1

    iput-object p1, p0, Landroidx/g/a/b;->c:Landroidx/g/a/b$c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 481
    iget-object v0, p0, Landroidx/g/a/b;->c:Landroidx/g/a/b$c;

    invoke-virtual {v0}, Landroidx/g/a/b$c;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 498
    iget-object v0, p0, Landroidx/g/a/b;->c:Landroidx/g/a/b$c;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/g/a/b$c;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderManager{"

    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    iget-object v1, p0, Landroidx/g/a/b;->b:Landroidx/lifecycle/h;

    invoke-static {v1, v0}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    .line 491
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
