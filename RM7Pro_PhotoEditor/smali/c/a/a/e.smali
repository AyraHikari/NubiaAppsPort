.class public final Lc/a/a/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lc/a/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/a/a/h/j;

    invoke-direct {v0}, Lc/a/a/h/j;-><init>()V

    sput-object v0, Lc/a/a/e;->a:Lc/a/a/f;

    return-void
.end method

.method public static a()Lc/a/a/d;
    .locals 1

    new-instance v0, Lc/a/a/h/g;

    invoke-direct {v0}, Lc/a/a/h/g;-><init>()V

    return-object v0
.end method

.method public static b()Lc/a/a/f;
    .locals 1

    sget-object v0, Lc/a/a/e;->a:Lc/a/a/f;

    return-object v0
.end method
