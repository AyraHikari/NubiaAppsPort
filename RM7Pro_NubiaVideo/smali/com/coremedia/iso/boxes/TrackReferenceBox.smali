.class public Lcom/coremedia/iso/boxes/TrackReferenceBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "SourceFile"


# static fields
.field public static final TYPE:Ljava/lang/String; = "tref"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "tref"

    .line 1
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    return-void
.end method
