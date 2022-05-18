.class public interface abstract Lcn/nubia/music/online/api/NubiaRadioManager$INubiaRadioListener;
.super Ljava/lang/Object;
.source "NubiaRadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/online/api/NubiaRadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "INubiaRadioListener"
.end annotation


# virtual methods
.method public abstract onGetRadio(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/data/MusicEntry;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onGetRadioType(Ljava/util/HashMap;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/online/data/RadioEntry;",
            ">;>;I)V"
        }
    .end annotation
.end method
