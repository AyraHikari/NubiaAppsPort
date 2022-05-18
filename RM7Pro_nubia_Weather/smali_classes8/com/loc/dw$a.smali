.class final Lcom/loc/dw$a;
.super Landroid/telephony/TelephonyManager$CellInfoCallback;
.source "CgiManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/dw;


# direct methods
.method constructor <init>(Lcom/loc/dw;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dw$a;->a:Lcom/loc/dw;

    invoke-direct {p0}, Landroid/telephony/TelephonyManager$CellInfoCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCellInfo(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/dw$a;->a:Lcom/loc/dw;

    invoke-static {v0}, Lcom/loc/dw;->d(Lcom/loc/dw;)Z

    iget-object v0, p0, Lcom/loc/dw$a;->a:Lcom/loc/dw;

    invoke-static {v0, p1}, Lcom/loc/dw;->a(Lcom/loc/dw;Ljava/util/List;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/loc/dw$a;->a:Lcom/loc/dw;

    iput-object v0, v1, Lcom/loc/dw;->f:Landroid/telephony/CellLocation;

    iget-object v0, p0, Lcom/loc/dw$a;->a:Lcom/loc/dw;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/dw;->g:Z

    iget-object v0, p0, Lcom/loc/dw$a;->a:Lcom/loc/dw;

    invoke-static {v0}, Lcom/loc/dw;->e(Lcom/loc/dw;)V

    iget-object v0, p0, Lcom/loc/dw$a;->a:Lcom/loc/dw;

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/loc/dw;->a(Lcom/loc/dw;J)J

    :cond_0
    return-void
.end method
