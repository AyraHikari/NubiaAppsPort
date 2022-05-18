.class public final Lcom/loc/at$a;
.super Ljava/lang/Object;
.source "HttpUrlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/net/HttpURLConnection;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/at$a;->a:Ljava/net/HttpURLConnection;

    iput p2, p0, Lcom/loc/at$a;->b:I

    return-void
.end method
