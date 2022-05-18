.class final Lcom/loc/dw$b;
.super Landroid/telephony/PhoneStateListener;
.source "CgiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/dw;


# direct methods
.method constructor <init>(Lcom/loc/dw;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dw$b;->a:Lcom/loc/dw;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCellInfoChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/loc/dw$b;->a:Lcom/loc/dw;

    invoke-static {v0}, Lcom/loc/dw;->f(Lcom/loc/dw;)Lcom/loc/do;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dw$b;->a:Lcom/loc/dw;

    invoke-static {v0}, Lcom/loc/dw;->f(Lcom/loc/dw;)Lcom/loc/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/do;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/dw$b;->a:Lcom/loc/dw;

    invoke-virtual {v0, p1}, Lcom/loc/dw;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/dw$b;->a:Lcom/loc/dw;

    iput-object p1, v0, Lcom/loc/dw;->f:Landroid/telephony/CellLocation;

    iget-object v0, p0, Lcom/loc/dw$b;->a:Lcom/loc/dw;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/dw;->g:Z

    iget-object v0, p0, Lcom/loc/dw$b;->a:Lcom/loc/dw;

    invoke-static {v0}, Lcom/loc/dw;->e(Lcom/loc/dw;)V

    iget-object v0, p0, Lcom/loc/dw$b;->a:Lcom/loc/dw;

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/loc/dw;->a(Lcom/loc/dw;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/loc/dw$b;->a:Lcom/loc/dw;

    invoke-virtual {v0}, Lcom/loc/dw;->i()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/loc/dw$b;->a:Lcom/loc/dw;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/loc/dw;->a(ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSignalStrengthChanged(I)V
    .locals 2

    const/16 v0, -0x71

    :try_start_0
    iget-object v1, p0, Lcom/loc/dw$b;->a:Lcom/loc/dw;

    iget v1, v1, Lcom/loc/dw;->a:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/loc/dw$b;->a:Lcom/loc/dw;

    invoke-static {v1, v0}, Lcom/loc/dw;->a(Lcom/loc/dw;I)V

    :goto_1
    return-void

    :pswitch_0
    invoke-static {p1}, Lcom/loc/ep;->a(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/loc/ep;->a(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, -0x71

    :try_start_0
    iget-object v1, p0, Lcom/loc/dw$b;->a:Lcom/loc/dw;

    iget v1, v1, Lcom/loc/dw;->a:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/loc/dw$b;->a:Lcom/loc/dw;

    invoke-static {v1, v0}, Lcom/loc/dw;->a(Lcom/loc/dw;I)V

    iget-object v0, p0, Lcom/loc/dw$b;->a:Lcom/loc/dw;

    invoke-static {v0}, Lcom/loc/dw;->f(Lcom/loc/dw;)Lcom/loc/do;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dw$b;->a:Lcom/loc/dw;

    invoke-static {v0}, Lcom/loc/dw;->f(Lcom/loc/dw;)Lcom/loc/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/do;->c()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    invoke-static {v0}, Lcom/loc/ep;->a(I)I

    move-result v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
