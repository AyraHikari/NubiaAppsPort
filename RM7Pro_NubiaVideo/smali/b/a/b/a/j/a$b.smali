.class Lb/a/b/a/j/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/a/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static a:Lb/a/b/a/j/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb/a/b/a/j/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/b/a/j/a;-><init>(Lb/a/b/a/j/a$a;)V

    sput-object v0, Lb/a/b/a/j/a$b;->a:Lb/a/b/a/j/a;

    return-void
.end method
