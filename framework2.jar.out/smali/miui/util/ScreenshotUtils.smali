.class public Lmiui/util/ScreenshotUtils;
.super Ljava/lang/Object;
.source "ScreenshotUtils.java"


# static fields
.field private static final ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

.field private static final ACTIVITY_SCREENSHOT_FOLDER_PATH:Ljava/lang/String; = "/data/system/app_screenshot"

.field private static final ACTIVITY_SCREENSHOT_SCALE:F

.field public static final BLUR_SCALE_RATIO:F = 0.33333334f

.field public static final DEFAULT_SCREEN_BLUR_RADIUS:I

.field public static final sBlack:F

.field public static final sBlurRadius:I

.field private static sDisplay:Landroid/view/Display;

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sKeyguardManager:Landroid/app/KeyguardManager;

.field public static final sMinification:I

.field public static sScreenHeight:I

.field public static sScreenWidth:I

.field private static sSizeBuf:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 37
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    sput-object v2, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    .line 43
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xa080012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lmiui/util/ScreenshotUtils;->DEFAULT_SCREEN_BLUR_RADIUS:I

    .line 46
    const-string v2, "persist.sys.real_blur_black"

    const/16 v3, 0x45

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    sput v2, Lmiui/util/ScreenshotUtils;->sBlack:F

    .line 50
    const-string v2, "persist.sys.real_blur_minify"

    const/16 v3, 0x13

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lmiui/util/ScreenshotUtils;->sMinification:I

    .line 51
    const-string v2, "persist.sys.real_blur_radius"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 52
    .local v0, "blurRadiusDip":I
    int-to-float v2, v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lmiui/util/ScreenshotUtils;->sBlurRadius:I

    .line 75
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/app_screenshot"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    .line 79
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 80
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xa080013

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 81
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    sput v2, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_SCALE:F

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()F
    .locals 1

    .prologue
    .line 33
    sget v0, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_SCALE:F

    return v0
.end method

.method public static captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortComponentName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 101
    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->initializeIfNeed(Landroid/content/Context;)V

    .line 103
    sget-object v3, Lmiui/util/ScreenshotUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->disallowTaskManagerScreenshotMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "persist.sys.screenshot_mode"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 106
    :cond_2
    invoke-static {p1, v2}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 107
    invoke-static {p1, v0}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 110
    :cond_3
    sget-object v3, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 111
    .local v1, "rotation":I
    if-eqz v1, :cond_4

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    :cond_4
    move v0, v2

    .line 113
    .local v0, "isPort":Z
    :cond_5
    sget-object v2, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    if-nez v2, :cond_7

    .line 114
    const-class v3, Lmiui/util/ScreenshotUtils;

    monitor-enter v3

    .line 115
    :try_start_0
    sget-object v2, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    if-nez v2, :cond_6

    .line 116
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "ScreenshotUtils"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v2, Lmiui/util/ScreenshotUtils;->sHandlerThread:Landroid/os/HandlerThread;

    .line 117
    sget-object v2, Lmiui/util/ScreenshotUtils;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance v2, Landroid/os/Handler;

    sget-object v4, Lmiui/util/ScreenshotUtils;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    .line 120
    :cond_6
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_7
    sget-object v2, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 125
    sget-object v2, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    new-instance v3, Lmiui/util/ScreenshotUtils$1;

    invoke-direct {v3, p0, v1, p1, v0}, Lmiui/util/ScreenshotUtils$1;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static disallowTaskManagerScreenshotMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "development_settings_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    :goto_0
    return v0

    :cond_0
    const-string v1, "enable_miui_lite"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;
    .locals 7
    .param p0, "shortComponentName"    # Ljava/lang/String;
    .param p1, "isPort"    # Z

    .prologue
    .line 165
    new-instance v1, Ljava/io/File;

    sget-object v2, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    const-string v3, "%s--%s"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/16 v5, 0x2f

    const/16 v6, 0x2d

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    const-string v0, "p"

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "l"

    goto :goto_0
.end method

.method public static getActivityScreenshotSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # Landroid/graphics/Point;

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 85
    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->initializeIfNeed(Landroid/content/Context;)V

    .line 87
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 88
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sget v1, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_SCALE:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 89
    iget v0, p1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    sget v1, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_SCALE:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 90
    return-void
.end method

.method public static getBlurBackground(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cache"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 228
    const v2, 0x3eaaaaab

    invoke-static {p0, v2, v3, v3, v3}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 229
    .local v1, "screenshot":Landroid/graphics/Bitmap;
    invoke-static {v1, p1}, Lmiui/util/ScreenshotUtils;->getBlurBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 230
    .local v0, "bluredBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 231
    return-object v0
.end method

.method public static getBlurBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "screenshot"    # Landroid/graphics/Bitmap;
    .param p1, "cache"    # Landroid/graphics/Bitmap;

    .prologue
    .line 243
    if-eqz p0, :cond_0

    .line 244
    sget v1, Lmiui/util/ScreenshotUtils;->DEFAULT_SCREEN_BLUR_RADIUS:I

    invoke-static {p0, p1, v1}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 247
    :cond_0
    if-eqz p1, :cond_1

    .line 248
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 249
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa0d000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 251
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    return-object p1
.end method

.method public static getScreenshot(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 170
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v2, v1}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scale"    # F
    .param p2, "minLayer"    # I
    .param p3, "maxLayer"    # I
    .param p4, "includeNavigationBar"    # Z

    .prologue
    .line 174
    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->initializeIfNeed(Landroid/content/Context;)V

    .line 175
    sget v12, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    int-to-float v12, v12

    mul-float v12, v12, p1

    float-to-int v8, v12

    .line 176
    .local v8, "screenshotWidth":I
    sget v12, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    int-to-float v12, v12

    mul-float v12, v12, p1

    float-to-int v7, v12

    .line 179
    .local v7, "screenshotHeight":I
    if-nez p2, :cond_4

    if-nez p3, :cond_4

    .line 180
    invoke-static {v8, v7}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 186
    .local v6, "screenshot":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v6, :cond_3

    .line 187
    sget-object v12, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v12}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 188
    .local v3, "degree":I
    if-eqz v3, :cond_0

    const/4 v12, 0x2

    if-ne v3, v12, :cond_5

    :cond_0
    const/4 v4, 0x1

    .line 190
    .local v4, "isPortrait":Z
    :goto_1
    if-eqz p4, :cond_6

    .line 191
    sget-object v12, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    sget-object v13, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    invoke-virtual {v12, v13}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 196
    :goto_2
    sget-object v12, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    mul-float v12, v12, p1

    float-to-int v10, v12

    .line 197
    .local v10, "targetWidth":I
    sget-object v12, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    mul-float v12, v12, p1

    float-to-int v9, v12

    .line 199
    .local v9, "targetHeight":I
    if-ne v8, v10, :cond_1

    if-ne v7, v9, :cond_1

    if-eqz v3, :cond_3

    .line 200
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 201
    .local v5, "matrix":Landroid/graphics/Matrix;
    if-eqz v3, :cond_2

    .line 202
    neg-int v12, v8

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    neg-int v13, v7

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    invoke-virtual {v5, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 203
    mul-int/lit8 v12, v3, 0x5a

    rsub-int v12, v12, 0x168

    int-to-float v12, v12

    invoke-virtual {v5, v12}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 204
    if-eqz v4, :cond_7

    int-to-float v12, v8

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move v13, v12

    :goto_3
    if-eqz v4, :cond_8

    int-to-float v12, v7

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v12, v14

    :goto_4
    invoke-virtual {v5, v13, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 209
    :cond_2
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v9, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 210
    .local v11, "temp":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 211
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v6, v5, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 212
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 213
    move-object v6, v11

    .line 217
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "degree":I
    .end local v4    # "isPortrait":Z
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "targetHeight":I
    .end local v10    # "targetWidth":I
    .end local v11    # "temp":Landroid/graphics/Bitmap;
    :cond_3
    return-object v6

    .line 183
    .end local v6    # "screenshot":Landroid/graphics/Bitmap;
    :cond_4
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v8, v7, v0, v1}, Lmiui/util/CompatibilityHelper;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6    # "screenshot":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 188
    .restart local v3    # "degree":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 194
    .restart local v4    # "isPortrait":Z
    :cond_6
    sget-object v12, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    sget-object v13, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    invoke-virtual {v12, v13}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_2

    .line 204
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    .restart local v9    # "targetHeight":I
    .restart local v10    # "targetWidth":I
    :cond_7
    int-to-float v12, v7

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move v13, v12

    goto :goto_3

    :cond_8
    int-to-float v12, v8

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v12, v14

    goto :goto_4
.end method

.method private static initializeIfNeed(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    .line 56
    sget-object v2, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    if-nez v2, :cond_2

    .line 57
    sget-object v2, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    sget-object v2, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    sget-object v2, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1fd

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 63
    :cond_0
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    sput-object v2, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    .line 64
    sget-object v2, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 65
    .local v0, "degree":I
    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    :cond_1
    const/4 v1, 0x1

    .line 66
    .local v1, "isPortrait":Z
    :goto_0
    sget-object v2, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    sget-object v3, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 67
    if-eqz v1, :cond_4

    sget-object v2, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    :goto_1
    sput v2, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    .line 68
    if-eqz v1, :cond_5

    sget-object v2, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    :goto_2
    sput v2, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    .line 70
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    sput-object v2, Lmiui/util/ScreenshotUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    .line 72
    .end local v0    # "degree":I
    .end local v1    # "isPortrait":Z
    :cond_2
    return-void

    .line 65
    .restart local v0    # "degree":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 67
    .restart local v1    # "isPortrait":Z
    :cond_4
    sget-object v2, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 68
    :cond_5
    sget-object v2, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    goto :goto_2
.end method
