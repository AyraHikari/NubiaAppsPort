.class public final Lcom/loc/ct$b;
.super Ljava/lang/Object;
.source "RssiManager.java"

# interfaces
.implements Lcom/loc/cr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:I


# direct methods
.method constructor <init>(JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/loc/ct$b;->a:J

    iput p3, p0, Lcom/loc/ct$b;->b:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/loc/ct$b;->a:J

    return-wide v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/loc/ct$b;->b:I

    return v0
.end method
