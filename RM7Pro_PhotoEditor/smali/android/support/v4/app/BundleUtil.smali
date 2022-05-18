.class Landroid/support/v4/app/BundleUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;
    .locals 3

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, [Landroid/os/Bundle;

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, v0

    const-class v2, [Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object v0

    :cond_1
    :goto_0
    check-cast v0, [Landroid/os/Bundle;

    return-object v0
.end method
