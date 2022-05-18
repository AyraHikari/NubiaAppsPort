.class public final Lcom/loc/cv;
.super Ljava/lang/Object;
.source "AmapContext.java"


# static fields
.field public static a:Z

.field private static volatile b:Lcom/loc/dk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/cv;->a:Z

    return-void
.end method

.method public static a()Lcom/loc/dk;
    .locals 1

    sget-object v0, Lcom/loc/cv;->b:Lcom/loc/dk;

    return-object v0
.end method

.method public static a(Lcom/loc/dk;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/loc/cv;->b:Lcom/loc/dk;

    :cond_0
    return-void
.end method
