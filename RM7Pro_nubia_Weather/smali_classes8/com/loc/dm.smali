.class public final Lcom/loc/dm;
.super Ljava/lang/Object;
.source "AMapLocationStaticsEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/loc/dm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/loc/dm$1;

    invoke-direct {v0}, Lcom/loc/dm$1;-><init>()V

    sput-object v0, Lcom/loc/dm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/loc/dm;->a:J

    iput-wide v0, p0, Lcom/loc/dm;->b:J

    iput-wide v0, p0, Lcom/loc/dm;->c:J

    iput-wide v0, p0, Lcom/loc/dm;->d:J

    const-string v0, "first"

    iput-object v0, p0, Lcom/loc/dm;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/dm;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/dm;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/dm;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 6

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/loc/dm;->d:J

    iget-wide v4, p0, Lcom/loc/dm;->c:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/loc/dm;->d:J

    iget-wide v2, p0, Lcom/loc/dm;->c:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/loc/dm;->c:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dm;->i:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/dm;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/loc/dm;->d:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dm;->j:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/dm;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final c(J)V
    .locals 1

    iput-wide p1, p0, Lcom/loc/dm;->a:J

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dm;->e:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/dm;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d(J)V
    .locals 1

    iput-wide p1, p0, Lcom/loc/dm;->b:J

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dm;->f:Ljava/lang/String;

    return-void
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/dm;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dm;->g:Ljava/lang/String;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/dm;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dm;->h:Ljava/lang/String;

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/dm;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final h()J
    .locals 4

    iget-wide v0, p0, Lcom/loc/dm;->b:J

    iget-wide v2, p0, Lcom/loc/dm;->a:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/loc/dm;->b:J

    iget-wide v2, p0, Lcom/loc/dm;->a:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/loc/dm;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dm;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dm;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dm;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dm;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/loc/dm;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/loc/dm;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/loc/dm;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/loc/dm;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/loc/dm;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
