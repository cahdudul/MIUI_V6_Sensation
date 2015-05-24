.class public Lmiui/maml/ScreenElementRoot;
.super Lmiui/maml/elements/ScreenElement;
.source "ScreenElementRoot.java"

# interfaces
.implements Lmiui/maml/InteractiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ScreenElementRoot$3;,
        Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;,
        Lmiui/maml/ScreenElementRoot$OnExternCommandListener;,
        Lmiui/maml/ScreenElementRoot$ExtraResource;,
        Lmiui/maml/ScreenElementRoot$InnerGroup;,
        Lmiui/maml/ScreenElementRoot$FramerateHelper;
    }
.end annotation


# static fields
.field private static final CALCULATE_FRAME_RATE:Z = true

.field private static final DEFAULT_RES_DENSITY:I = 0xf0

.field private static final DEFAULT_SCREEN_WIDTH:I = 0x1e0

.field private static final EXTERNAL_COMMANDS_TAG_NAME:Ljava/lang/String; = "ExternalCommands"

.field private static final LOG_TAG:Ljava/lang/String; = "ScreenElementRoot"

.field private static final RAW_DENSITY:Ljava/lang/String; = "__raw_density"

.field private static final ROOT_NAME:Ljava/lang/String; = "__root"

.field private static final SCALE_FACTOR:Ljava/lang/String; = "__scale_factor"

.field private static final VARIABLE_VIEW_HEIGHT:Ljava/lang/String; = "view_height"

.field private static final VARIABLE_VIEW_WIDTH:Ljava/lang/String; = "view_width"


# instance fields
.field protected DEFAULT_FRAME_RATE:F

.field private mAllowScreenRotation:Z

.field private mCacheDir:Ljava/lang/String;

.field private mCheckPoint:J

.field private mClearCanvas:Z

.field private mConfig:Lmiui/maml/util/ConfigFile;

.field private mConfigPath:Ljava/lang/String;

.field protected mContext:Lmiui/maml/ScreenContext;

.field private mDefaultResourceDensity:I

.field private mDefaultScreenWidth:I

.field private mExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/maml/ScreenElementRoot$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalCommandManager:Lmiui/maml/CommandTriggers;

.field private mFinished:Z

.field private mFrameRateVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

.field private mFrames:I

.field private mHeight:F

.field private mHoverChangeListener:Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;

.field public mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

.field private mHoverMatrix:Landroid/graphics/Matrix;

.field protected mImmVibrateManager:Lmiui/maml/ImmVibrateManager;

.field protected mInnerGroup:Lmiui/maml/elements/ElementGroup;

.field private mKeepResource:Z

.field private mNeedDisallowInterceptTouchEvent:Z

.field private mNeedDisallowInterceptTouchEventVar:Lmiui/maml/util/IndexedNumberVariable;

.field mNeedReset:Z

.field private mPreTickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ITicker;",
            ">;"
        }
    .end annotation
.end field

.field protected mRawAttrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRawDefaultResourceDensity:I

.field private mRawHeight:I

.field private mRawTargetDensity:I

.field private mRawWidth:I

.field private mRendererControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/RendererController;",
            ">;"
        }
    .end annotation
.end field

.field private mScale:F

.field private mScaleByDensity:Z

.field public mShowDebugLayout:Z

.field private mShowFramerate:Z

.field private mSoundManager:Lmiui/maml/SoundManager;

.field private mStylesManager:Lmiui/maml/StylesManager;

.field private mSystemExternCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

.field private mTargetDensity:I

.field protected mTargetScreenHeight:I

.field protected mTargetScreenWidth:I

.field private mTouchBeginTime:Lmiui/maml/util/IndexedNumberVariable;

.field private mTouchBeginX:Lmiui/maml/util/IndexedNumberVariable;

.field private mTouchBeginY:Lmiui/maml/util/IndexedNumberVariable;

.field private mTouchX:Lmiui/maml/util/IndexedNumberVariable;

.field private mTouchY:Lmiui/maml/util/IndexedNumberVariable;

.field protected mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

.field private mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

.field private mWidth:F


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenContext;)V
    .locals 3
    .param p1, "c"    # Lmiui/maml/ScreenContext;

    .prologue
    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, v0, v0}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 82
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    .line 152
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    .line 192
    new-instance v0, Lmiui/maml/ScreenElementRoot$FramerateHelper;

    invoke-direct {v0}, Lmiui/maml/ScreenElementRoot$FramerateHelper;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 225
    iput-object p0, p0, Lmiui/maml/ScreenElementRoot;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 226
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    .line 227
    new-instance v0, Lmiui/maml/data/VariableUpdaterManager;

    invoke-direct {v0, p0}, Lmiui/maml/data/VariableUpdaterManager;-><init>(Lmiui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    .line 228
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "touch_x"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchX:Lmiui/maml/util/IndexedNumberVariable;

    .line 229
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "touch_y"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchY:Lmiui/maml/util/IndexedNumberVariable;

    .line 230
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "touch_begin_x"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginX:Lmiui/maml/util/IndexedNumberVariable;

    .line 231
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "touch_begin_y"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginY:Lmiui/maml/util/IndexedNumberVariable;

    .line 232
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "touch_begin_time"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginTime:Lmiui/maml/util/IndexedNumberVariable;

    .line 233
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "intercept_sys_touch"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 235
    new-instance v0, Lmiui/maml/SoundManager;

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-direct {v0, v1, v2}, Lmiui/maml/SoundManager;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    .line 236
    sget-boolean v0, Lmiui/util/HapticFeedbackUtil;->IS_IMMERSION_ENABLED:Z

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Lmiui/maml/ImmVibrateManager;

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-direct {v0, v1}, Lmiui/maml/ImmVibrateManager;-><init>(Lmiui/maml/ScreenContext;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mImmVibrateManager:Lmiui/maml/ImmVibrateManager;

    .line 239
    :cond_0
    new-instance v0, Lmiui/maml/SystemCommandListener;

    invoke-direct {v0, p0}, Lmiui/maml/SystemCommandListener;-><init>(Lmiui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSystemExternCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 240
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/ScreenElementRoot;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/CommandTriggers;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    return-object v0
.end method

.method private loadConfig(Ljava/lang/String;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 439
    if-nez p1, :cond_1

    .line 464
    :cond_0
    return-void

    .line 442
    :cond_1
    new-instance v6, Lmiui/maml/util/ConfigFile;

    invoke-direct {v6}, Lmiui/maml/util/ConfigFile;-><init>()V

    iput-object v6, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    .line 443
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v6, p1}, Lmiui/maml/util/ConfigFile;->load(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 445
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v6}, Lmiui/maml/ResourceManager;->getConfigRoot()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 446
    .local v3, "root":Lorg/w3c/dom/Element;
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v6, v3}, Lmiui/maml/util/ConfigFile;->loadDefaultSettings(Lorg/w3c/dom/Element;)V

    .line 448
    .end local v3    # "root":Lorg/w3c/dom/Element;
    :cond_2
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v6}, Lmiui/maml/util/ConfigFile;->getVariables()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/util/ConfigFile$Variable;

    .line 449
    .local v5, "v":Lmiui/maml/util/ConfigFile$Variable;
    iget-object v6, v5, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v7, "string"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 450
    iget-object v6, v5, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v7, v7, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v8, v5, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_4
    iget-object v6, v5, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v7, "number"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 453
    :try_start_0
    iget-object v6, v5, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 454
    .local v0, "d":D
    iget-object v6, v5, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v7, v7, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 455
    .end local v0    # "d":D
    :catch_0
    move-exception v6

    goto :goto_0

    .line 459
    .end local v5    # "v":Lmiui/maml/util/ConfigFile$Variable;
    :cond_5
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v6}, Lmiui/maml/util/ConfigFile;->getTasks()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/util/Task;

    .line 460
    .local v4, "t":Lmiui/maml/util/Task;
    iget-object v6, v4, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    const-string v7, "name"

    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v8, v8, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v9, v4, Lmiui/maml/util/Task;->name:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 461
    iget-object v6, v4, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    const-string v7, "package"

    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v8, v8, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v9, v4, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 462
    iget-object v6, v4, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    const-string v7, "class"

    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v8, v8, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v9, v4, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadRawAttrs(Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    .line 973
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 974
    .local v2, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 975
    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 976
    .local v1, "item":Lorg/w3c/dom/Node;
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 978
    .end local v1    # "item":Lorg/w3c/dom/Node;
    :cond_0
    return-void
.end method

.method private processUseVariableUpdater(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    .line 983
    const-string v1, "useVariableUpdater"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, "updater":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 985
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {p0, v1}, Lmiui/maml/ScreenElementRoot;->onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V

    .line 989
    :goto_0
    return-void

    .line 987
    :cond_0
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v1, v0}, Lmiui/maml/data/VariableUpdaterManager;->addFromTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupScale(Lorg/w3c/dom/Element;)V
    .locals 20
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    .line 894
    const-string v17, "scaleByDensity"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 895
    .local v12, "scaleByDensity":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 896
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/maml/ScreenElementRoot;->mScaleByDensity:Z

    .line 898
    :cond_0
    const-string v17, "screenWidth"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 899
    const-string v17, "resDensity"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    .line 900
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 901
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v17, v0

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 902
    const/16 v17, 0x1e0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 903
    const/16 v17, 0xf0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 911
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lmiui/maml/ResourceManager;->setDefaultResourceDensity(I)V

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "window"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 914
    .local v16, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 916
    .local v4, "display":Landroid/view/Display;
    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14}, Landroid/graphics/Point;-><init>()V

    .line 917
    .local v14, "size":Landroid/graphics/Point;
    invoke-virtual {v4, v14}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 918
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v10

    .line 919
    .local v10, "rotation":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_2

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v10, v0, :cond_7

    :cond_2
    const/4 v9, 0x1

    .line 920
    .local v9, "rotated":Z
    :goto_1
    if-eqz v9, :cond_8

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    :goto_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 921
    if-eqz v9, :cond_9

    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    :goto_3
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 922
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 923
    .local v5, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v4, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 924
    iget v0, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 927
    .local v3, "config":Landroid/content/res/Configuration;
    iget v0, v3, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v17, v0

    and-int/lit8 v15, v17, 0xf

    .line 930
    .local v15, "targetSizeType":I
    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    .line 931
    .local v6, "rawDefaultResourceDen":I
    if-nez v6, :cond_3

    .line 932
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    div-int/lit16 v6, v0, 0x1e0

    .line 934
    :cond_3
    new-instance v8, Lmiui/maml/ScreenElementRoot$ExtraResource;

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v6}, Lmiui/maml/ScreenElementRoot$ExtraResource;-><init>(Lorg/w3c/dom/Element;I)V

    .line 935
    .local v8, "resources":Lmiui/maml/ScreenElementRoot$ExtraResource;
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1, v15}, Lmiui/maml/ScreenElementRoot$ExtraResource;->findResource(III)Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;

    move-result-object v7

    .line 936
    .local v7, "res":Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    move-object/from16 v17, v0

    iget-object v0, v7, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lmiui/maml/ResourceManager;->setExtraResource(Ljava/lang/String;)V

    .line 939
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1, v15}, Lmiui/maml/ScreenElementRoot$ExtraResource;->findScale(III)Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;

    move-result-object v11

    .line 942
    .local v11, "scale":Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;
    const/high16 v13, 0x3f800000    # 1.0f

    .line 943
    .local v13, "scaleResourceToTarget":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/maml/ScreenElementRoot;->mScaleByDensity:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 944
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    .line 946
    iget v0, v11, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mScale:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_a

    .line 947
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mScale:F

    .line 961
    :cond_4
    :goto_4
    const-string v17, "ScreenElementRoot"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "set scale: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mScale:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lmiui/maml/ResourceManager;->setTargetDensity(I)V

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    move-object/from16 v17, v0

    iget v0, v7, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mDensity:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v7, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScale:F

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lmiui/maml/ResourceManager;->setExtraResourceDensity(I)V

    .line 966
    const-string v17, "width"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    .line 967
    const-string v17, "height"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    .line 968
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mWidth:F

    .line 969
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mHeight:F

    .line 970
    return-void

    .line 904
    .end local v3    # "config":Landroid/content/res/Configuration;
    .end local v4    # "display":Landroid/view/Display;
    .end local v5    # "outMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "rawDefaultResourceDen":I
    .end local v7    # "res":Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;
    .end local v8    # "resources":Lmiui/maml/ScreenElementRoot$ExtraResource;
    .end local v9    # "rotated":Z
    .end local v10    # "rotation":I
    .end local v11    # "scale":Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;
    .end local v13    # "scaleResourceToTarget":F
    .end local v14    # "size":Landroid/graphics/Point;
    .end local v15    # "targetSizeType":I
    .end local v16    # "wm":Landroid/view/WindowManager;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 906
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    goto/16 :goto_0

    .line 907
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 908
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v17, v0

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x1e0

    move/from16 v17, v0

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    goto/16 :goto_0

    .line 919
    .restart local v4    # "display":Landroid/view/Display;
    .restart local v10    # "rotation":I
    .restart local v14    # "size":Landroid/graphics/Point;
    .restart local v16    # "wm":Landroid/view/WindowManager;
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 920
    .restart local v9    # "rotated":Z
    :cond_8
    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    goto/16 :goto_2

    .line 921
    :cond_9
    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    goto/16 :goto_3

    .line 949
    .restart local v3    # "config":Landroid/content/res/Configuration;
    .restart local v5    # "outMetrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "rawDefaultResourceDen":I
    .restart local v7    # "res":Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;
    .restart local v8    # "resources":Lmiui/maml/ScreenElementRoot$ExtraResource;
    .restart local v11    # "scale":Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;
    .restart local v13    # "scaleResourceToTarget":F
    .restart local v15    # "targetSizeType":I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    iget v0, v11, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mDensity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v13, v17, v18

    .line 950
    iget v0, v11, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mScale:F

    move/from16 v17, v0

    mul-float v17, v17, v13

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mScale:F

    goto/16 :goto_4

    .line 953
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mScale:F

    .line 954
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    .line 956
    iget v0, v11, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mScale:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_4

    .line 957
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    iget v0, v11, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mScreenWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v13, v17, v18

    .line 958
    iget v0, v11, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mScale:F

    move/from16 v17, v0

    mul-float v17, v17, v13

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mScale:F

    goto/16 :goto_4
.end method

.method private traverseElements()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 639
    new-instance v0, Lmiui/maml/ScreenElementRoot$1;

    invoke-direct {v0, p0}, Lmiui/maml/ScreenElementRoot$1;-><init>(Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    .line 660
    return-void
.end method


# virtual methods
.method public acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V
    .locals 1
    .param p1, "v"    # Lmiui/maml/elements/ScreenElementVisitor;

    .prologue
    .line 1296
    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    .line 1297
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ElementGroup;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    .line 1298
    return-void
.end method

.method public addPreTicker(Lmiui/maml/elements/ITicker;)V
    .locals 1
    .param p1, "ticker"    # Lmiui/maml/elements/ITicker;

    .prologue
    .line 1108
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    return-void
.end method

.method public allowScreenRotation()Z
    .locals 1

    .prologue
    .line 1321
    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    return v0
.end method

.method public attachToRenderThread(Lmiui/maml/RenderThread;)V
    .locals 4
    .param p1, "t"    # Lmiui/maml/RenderThread;

    .prologue
    .line 1242
    if-eqz p1, :cond_0

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    if-nez v2, :cond_1

    .line 1243
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "thread or controller is null, MUST load before attaching"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1245
    :cond_1
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1246
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1247
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    invoke-virtual {p1, v2}, Lmiui/maml/RenderThread;->addRendererController(Lmiui/maml/RendererController;)V

    .line 1246
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1249
    :cond_2
    return-void
.end method

.method public createFramerateToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lmiui/maml/ScreenElementRoot;->createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public detachFromRenderThread(Lmiui/maml/RenderThread;)V
    .locals 4
    .param p1, "t"    # Lmiui/maml/RenderThread;

    .prologue
    .line 1252
    if-eqz p1, :cond_0

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    if-nez v2, :cond_1

    .line 1253
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "thread or controller is null, MUST load before detaching"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1255
    :cond_1
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1256
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1257
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    invoke-virtual {p1, v2}, Lmiui/maml/RenderThread;->removeRendererController(Lmiui/maml/RendererController;)V

    .line 1256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1259
    :cond_2
    return-void
.end method

.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 353
    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v1, :cond_0

    .line 375
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mClearCanvas:Z

    if-eqz v1, :cond_1

    .line 357
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 361
    :cond_1
    :try_start_0
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1, p1}, Lmiui/maml/elements/ElementGroup;->render(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 369
    :goto_1
    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mShowFramerate:Z

    if-eqz v1, :cond_2

    .line 370
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

    invoke-virtual {v1, p1}, Lmiui/maml/ScreenElementRoot$FramerateHelper;->draw(Landroid/graphics/Canvas;)V

    .line 373
    :cond_2
    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    .line 374
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v1}, Lmiui/maml/RendererController;->doneRender()V

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 364
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 366
    const-string v1, "ScreenElementRoot"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected doTick(J)V
    .locals 10
    .param p1, "currentTime"    # J

    .prologue
    .line 275
    iget-boolean v6, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v6, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v6, :cond_2

    .line 279
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v6}, Lmiui/maml/data/VariableBinderManager;->tick()V

    .line 281
    :cond_2
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v6, p1, p2}, Lmiui/maml/data/VariableUpdaterManager;->tick(J)V

    .line 284
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 285
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 286
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/elements/ITicker;

    invoke-interface {v6, p1, p2}, Lmiui/maml/elements/ITicker;->tick(J)V

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 289
    :cond_3
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v6, p1, p2}, Lmiui/maml/elements/ElementGroup;->tick(J)V

    .line 292
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v6}, Lmiui/maml/util/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v1

    .line 293
    .local v1, "d":Ljava/lang/Double;
    if-eqz v1, :cond_4

    .line 294
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_6

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    .line 298
    :cond_4
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mFrameRateVar:Lmiui/maml/util/IndexedNumberVariable;

    if-nez v6, :cond_5

    .line 299
    new-instance v6, Lmiui/maml/util/IndexedNumberVariable;

    const-string v7, "frame_rate"

    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v8, v8, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v6, v7, v8}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v6, p0, Lmiui/maml/ScreenElementRoot;->mFrameRateVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 300
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    .line 303
    :cond_5
    iget-wide v6, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 304
    iput-wide p1, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    goto :goto_0

    .line 294
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 306
    :cond_7
    iget-wide v6, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    sub-long v4, p1, v6

    .line 307
    .local v4, "t":J
    const-wide/16 v6, 0x3e8

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    .line 308
    iget v6, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    div-long/2addr v6, v4

    long-to-int v3, v6

    .line 309
    .local v3, "r":I
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

    invoke-virtual {v6, v3}, Lmiui/maml/ScreenElementRoot$FramerateHelper;->set(I)V

    .line 310
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mFrameRateVar:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v7, v3

    invoke-virtual {v6, v7, v8}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 311
    const/4 v6, 0x0

    iput v6, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    .line 312
    iput-wide p1, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    goto/16 :goto_0
.end method

.method public doneRender()V
    .locals 1

    .prologue
    .line 1262
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->doneRender()V

    .line 1263
    return-void
.end method

.method public findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 348
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0, p1}, Lmiui/maml/data/VariableBinderManager;->findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 341
    const-string v0, "__root"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    .end local p0    # "this":Lmiui/maml/ScreenElementRoot;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lmiui/maml/ScreenElementRoot;
    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object p0

    goto :goto_0
.end method

.method public findTask(Ljava/lang/String;)Lmiui/maml/util/Task;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1010
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v0, p1}, Lmiui/maml/util/ConfigFile;->getTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 1044
    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v0, :cond_0

    .line 1069
    :goto_0
    return-void

    .line 1046
    :cond_0
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->finish()V

    .line 1048
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->finish()V

    .line 1049
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-eqz v0, :cond_1

    .line 1050
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v0}, Lmiui/maml/util/ConfigFile;->save()Z

    .line 1053
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_2

    .line 1054
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->finish()V

    .line 1056
    :cond_2
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_3

    .line 1057
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->finish()V

    .line 1059
    :cond_3
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_4

    .line 1060
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->finish()V

    .line 1062
    :cond_4
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    invoke-virtual {v0}, Lmiui/maml/SoundManager;->release()V

    .line 1063
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mImmVibrateManager:Lmiui/maml/ImmVibrateManager;

    if-eqz v0, :cond_5

    .line 1064
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mImmVibrateManager:Lmiui/maml/ImmVibrateManager;

    invoke-virtual {v0}, Lmiui/maml/ImmVibrateManager;->finish()V

    .line 1066
    :cond_5
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mKeepResource:Z

    invoke-virtual {v0, v1}, Lmiui/maml/ResourceManager;->finish(Z)V

    .line 1067
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    .line 1068
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mKeepResource:Z

    goto :goto_0
.end method

.method public getCacheDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Lmiui/maml/ScreenContext;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    return-object v0
.end method

.method public getDefaultScreenWidth()I
    .locals 1

    .prologue
    .line 1035
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 1104
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mHeight:F

    return v0
.end method

.method public getImmVibrateManager()Lmiui/maml/ImmVibrateManager;
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mImmVibrateManager:Lmiui/maml/ImmVibrateManager;

    return-object v0
.end method

.method public getRawAttr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 323
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getResourceDensity()I
    .locals 1

    .prologue
    .line 1027
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    return v0
.end method

.method public final getScale()F
    .locals 2

    .prologue
    .line 1018
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1019
    const-string v0, "ScreenElementRoot"

    const-string v1, "scale not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1023
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    goto :goto_0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 1096
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 1092
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    return v0
.end method

.method public getStyle(Ljava/lang/String;)Lmiui/maml/StylesManager$Style;
    .locals 2
    .param p1, "style"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 631
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mStylesManager:Lmiui/maml/StylesManager;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mStylesManager:Lmiui/maml/StylesManager;

    invoke-virtual {v0, p1}, Lmiui/maml/StylesManager;->getStyle(Ljava/lang/String;)Lmiui/maml/StylesManager$Style;

    move-result-object v0

    goto :goto_0
.end method

.method public getTargetDensity()I
    .locals 1

    .prologue
    .line 1031
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 1100
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mWidth:F

    return v0
.end method

.method public haptic(I)V
    .locals 0
    .param p1, "effectId"    # I

    .prologue
    .line 1006
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 383
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    .line 384
    const-string v1, "debug.layout"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    .line 386
    iput-boolean v2, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    .line 387
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v1}, Lmiui/maml/ResourceManager;->init()V

    .line 389
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    .line 391
    .local v0, "vars":Lmiui/maml/data/Variables;
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {v1, v2, v3}, Lmiui/maml/LanguageHelper;->load(Ljava/util/Locale;Lmiui/maml/ResourceManager;Lmiui/maml/data/Variables;)Z

    .line 393
    const-string v1, "raw_screen_width"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;Ljava/lang/Double;)V

    .line 394
    const-string v1, "raw_screen_height"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;Ljava/lang/Double;)V

    .line 395
    const-string v1, "screen_width"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;Ljava/lang/Double;)V

    .line 396
    const-string v1, "screen_height"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;Ljava/lang/Double;)V

    .line 397
    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    if-lez v1, :cond_0

    .line 398
    const-string v1, "view_width"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;Ljava/lang/Double;)V

    .line 400
    :cond_0
    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    if-lez v1, :cond_1

    .line 401
    const-string v1, "view_height"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;Ljava/lang/Double;)V

    .line 403
    :cond_1
    const-string v1, "view_width"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;D)V

    .line 404
    const-string v1, "view_height"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;D)V

    .line 406
    const-string v1, "__raw_density"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;Ljava/lang/Double;)V

    .line 407
    const-string v1, "__scale_factor"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;Ljava/lang/Double;)V

    .line 408
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->loadConfig()V

    .line 411
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v1, :cond_2

    .line 412
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v1}, Lmiui/maml/data/VariableUpdaterManager;->init()V

    .line 415
    :cond_2
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v1, :cond_3

    .line 416
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v1}, Lmiui/maml/data/VariableBinderManager;->init()V

    .line 419
    :cond_3
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v1, :cond_4

    .line 420
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    invoke-virtual {v1}, Lmiui/maml/CommandTriggers;->init()V

    .line 423
    :cond_4
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 425
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v2, 0x0

    iput-object v2, v1, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    .line 427
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mImmVibrateManager:Lmiui/maml/ImmVibrateManager;

    if-eqz v1, :cond_5

    .line 428
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mImmVibrateManager:Lmiui/maml/ImmVibrateManager;

    invoke-virtual {v1}, Lmiui/maml/ImmVibrateManager;->init()V

    .line 430
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mNeedReset:Z

    .line 431
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 432
    return-void
.end method

.method public issueExternCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "para1"    # Ljava/lang/Double;
    .param p3, "para2"    # Ljava/lang/String;

    .prologue
    .line 1126
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mSystemExternCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    invoke-interface {v1, p1, p2, p3}, Lmiui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 1128
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1129
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 1130
    .local v0, "l":Lmiui/maml/ScreenElementRoot$OnExternCommandListener;
    if-eqz v0, :cond_0

    .line 1131
    invoke-interface {v0, p1, p2, p3}, Lmiui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 1132
    const-string v1, "ScreenElementRoot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "issueExternCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    .end local v0    # "l":Lmiui/maml/ScreenElementRoot$OnExternCommandListener;
    :cond_0
    return-void
.end method

.method public final load()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 581
    :try_start_0
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v6}, Lmiui/maml/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 582
    .local v3, "root":Lorg/w3c/dom/Element;
    if-nez v3, :cond_1

    .line 627
    .end local v3    # "root":Lorg/w3c/dom/Element;
    :cond_0
    :goto_0
    return v5

    .line 585
    .restart local v3    # "root":Lorg/w3c/dom/Element;
    :cond_1
    invoke-direct {p0, v3}, Lmiui/maml/ScreenElementRoot;->loadRawAttrs(Lorg/w3c/dom/Element;)V

    .line 586
    invoke-direct {p0, v3}, Lmiui/maml/ScreenElementRoot;->processUseVariableUpdater(Lorg/w3c/dom/Element;)V

    .line 589
    invoke-direct {p0, v3}, Lmiui/maml/ScreenElementRoot;->setupScale(Lorg/w3c/dom/Element;)V

    .line 591
    const-string v6, "VariableBinders"

    invoke-static {v3, v6}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 593
    .local v0, "binders":Lorg/w3c/dom/Element;
    new-instance v6, Lmiui/maml/data/VariableBinderManager;

    invoke-direct {v6, v0, p0}, Lmiui/maml/data/VariableBinderManager;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v6, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    .line 595
    const-string v6, "ExternalCommands"

    invoke-static {v3, v6}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 596
    .local v1, "commands":Lorg/w3c/dom/Element;
    if-eqz v1, :cond_2

    .line 597
    new-instance v6, Lmiui/maml/CommandTriggers;

    invoke-direct {v6, v1, p0}, Lmiui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v6, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    .line 601
    :cond_2
    const-string v6, "Styles"

    invoke-static {v3, v6}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 602
    .local v4, "styles":Lorg/w3c/dom/Element;
    if-eqz v4, :cond_3

    .line 603
    new-instance v6, Lmiui/maml/StylesManager;

    invoke-direct {v6, v4}, Lmiui/maml/StylesManager;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v6, p0, Lmiui/maml/ScreenElementRoot;->mStylesManager:Lmiui/maml/StylesManager;

    .line 606
    :cond_3
    const-string v6, "frameRate"

    iget v7, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    invoke-static {v3, v6, v7}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v6

    iput v6, p0, Lmiui/maml/ScreenElementRoot;->mFrameRate:F

    .line 607
    const-string v6, "clearCanvas"

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmiui/maml/ScreenElementRoot;->mClearCanvas:Z

    .line 608
    const-string v6, "allowScreenRotation"

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmiui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    .line 609
    new-instance v6, Lmiui/maml/RendererController;

    invoke-direct {v6}, Lmiui/maml/RendererController;-><init>()V

    iput-object v6, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    .line 610
    new-instance v6, Lmiui/maml/ScreenElementRoot$InnerGroup;

    invoke-direct {v6, v3, p0}, Lmiui/maml/ScreenElementRoot$InnerGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v6, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    .line 611
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v6}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_4

    .line 612
    const-string v6, "ScreenElementRoot"

    const-string v7, "load error, no element loaded"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 624
    .end local v0    # "binders":Lorg/w3c/dom/Element;
    .end local v1    # "commands":Lorg/w3c/dom/Element;
    .end local v3    # "root":Lorg/w3c/dom/Element;
    .end local v4    # "styles":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v2

    .line 625
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 616
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "binders":Lorg/w3c/dom/Element;
    .restart local v1    # "commands":Lorg/w3c/dom/Element;
    .restart local v3    # "root":Lorg/w3c/dom/Element;
    .restart local v4    # "styles":Lorg/w3c/dom/Element;
    :cond_4
    :try_start_1
    invoke-virtual {p0, v3}, Lmiui/maml/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 621
    invoke-direct {p0}, Lmiui/maml/ScreenElementRoot;->traverseElements()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 623
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public loadConfig()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/maml/ScreenElementRoot;->loadConfig(Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public needDisallowInterceptTouchEvent()Z
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    return v0
.end method

.method protected onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V
    .locals 1
    .param p1, "m"    # Lmiui/maml/data/VariableUpdaterManager;

    .prologue
    .line 247
    new-instance v0, Lmiui/maml/data/DateTimeVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/maml/data/DateTimeVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    .line 248
    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 1072
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 1073
    new-instance v0, Lmiui/maml/ScreenElementRoot$2;

    invoke-direct {v0, p0, p1}, Lmiui/maml/ScreenElementRoot$2;-><init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->postRunnable(Ljava/lang/Runnable;)V

    .line 1085
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1313
    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    if-eqz v0, :cond_0

    .line 1314
    invoke-virtual {p0, p1}, Lmiui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 1315
    const-string v0, "orientationChange"

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 1318
    :cond_0
    return-void
.end method

.method protected onCreateRendererController()Lmiui/maml/RendererController;
    .locals 1

    .prologue
    .line 1309
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 549
    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ElementGroup;->onHover(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onHoverChange(Ljava/lang/String;)V
    .locals 1
    .param p1, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 1146
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mHoverChangeListener:Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mHoverChangeListener:Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;

    invoke-interface {v0, p1}, Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;->onHoverChange(Ljava/lang/String;)V

    .line 1149
    :cond_0
    return-void
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .locals 1
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    .line 557
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 504
    iget-boolean v8, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v8, :cond_0

    .line 544
    :goto_0
    return v4

    .line 507
    :cond_0
    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v8, :cond_3

    .line 508
    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v8}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    .line 509
    .local v1, "hoverWidth":F
    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v8}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v0

    .line 510
    .local v0, "hoverHeight":F
    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v8}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    move-result v8

    div-float v9, v1, v10

    add-float v2, v8, v9

    .line 511
    .local v2, "hoverX":F
    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v8}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    move-result v8

    div-float v9, v0, v10

    add-float v3, v8, v9

    .line 512
    .local v3, "hoverY":F
    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    sub-float v9, v2, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float v10, v3, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 513
    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 514
    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v8, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    .line 515
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-eq v8, v7, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 517
    :cond_1
    const/4 v8, 0x0

    iput-object v8, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    :cond_2
    move v4, v7

    .line 519
    goto :goto_0

    .line 522
    .end local v0    # "hoverHeight":F
    .end local v1    # "hoverWidth":F
    .end local v2    # "hoverX":F
    .end local v3    # "hoverY":F
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p0, v7}, Lmiui/maml/ScreenElementRoot;->descale(F)F

    move-result v5

    .line 523
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0, v7}, Lmiui/maml/ScreenElementRoot;->descale(F)F

    move-result v6

    .line 525
    .local v6, "y":F
    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mTouchX:Lmiui/maml/util/IndexedNumberVariable;

    float-to-double v8, v5

    invoke-virtual {v7, v8, v9}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 526
    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mTouchY:Lmiui/maml/util/IndexedNumberVariable;

    float-to-double v8, v6

    invoke-virtual {v7, v8, v9}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 527
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 542
    :goto_1
    :pswitch_0
    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v7, p1}, Lmiui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 543
    .local v4, "ret":Z
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    goto :goto_0

    .line 529
    .end local v4    # "ret":Z
    :pswitch_1
    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginX:Lmiui/maml/util/IndexedNumberVariable;

    float-to-double v8, v5

    invoke-virtual {v7, v8, v9}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 530
    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginY:Lmiui/maml/util/IndexedNumberVariable;

    float-to-double v8, v6

    invoke-virtual {v7, v8, v9}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 531
    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginTime:Lmiui/maml/util/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 533
    iput-boolean v4, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_1

    .line 538
    :pswitch_2
    iput-boolean v4, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_1

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onUIInteractive(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 0
    .param p1, "e"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1089
    return-void
.end method

.method protected onVisibilityChange(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 1302
    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->onVisibilityChange(Z)V

    .line 1303
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->updateVisibility()V

    .line 1304
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 468
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->pause()V

    .line 470
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->pause()V

    .line 472
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->pause()V

    .line 475
    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->pause()V

    .line 478
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_2

    .line 479
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->pause()V

    .line 480
    :cond_2
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0}, Lmiui/maml/ResourceManager;->pause()V

    .line 481
    return-void
.end method

.method protected pauseAnim(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1273
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 1274
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->pauseAnim(J)V

    .line 1275
    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 9
    .param p1, "time"    # J
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "isLoop"    # Z
    .param p8, "isDelay"    # Z

    .prologue
    .line 1267
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 1268
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lmiui/maml/elements/ElementGroup;->playAnim(JJJZZ)V

    .line 1269
    return-void
.end method

.method public playSound(Ljava/lang/String;)V
    .locals 3
    .param p1, "sound"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 992
    new-instance v0, Lmiui/maml/SoundManager$SoundOptions;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v1}, Lmiui/maml/SoundManager$SoundOptions;-><init>(ZZF)V

    invoke-virtual {p0, p1, v0}, Lmiui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)V

    .line 993
    return-void
.end method

.method public playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)V
    .locals 1
    .param p1, "sound"    # Ljava/lang/String;
    .param p2, "options"    # Lmiui/maml/SoundManager$SoundOptions;

    .prologue
    .line 996
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 999
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->shouldPlaySound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/SoundManager;->playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)V

    goto :goto_0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 336
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/maml/ScreenContext;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public postMessage(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1212
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0, p1}, Lmiui/maml/RendererController;->postMessage(Landroid/view/MotionEvent;)V

    .line 1213
    return-void
.end method

.method protected putRawAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 319
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public removePreTicker(Lmiui/maml/elements/ITicker;)V
    .locals 1
    .param p1, "ticker"    # Lmiui/maml/elements/ITicker;

    .prologue
    .line 1112
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1113
    return-void
.end method

.method public requestUpdate()V
    .locals 4

    .prologue
    .line 1233
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1234
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1235
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    .line 1236
    .local v1, "c":Lmiui/maml/RendererController;
    invoke-virtual {v1}, Lmiui/maml/RendererController;->requestUpdate()V

    .line 1234
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1238
    .end local v1    # "c":Lmiui/maml/RendererController;
    :cond_0
    return-void
.end method

.method public reset(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1285
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    .line 1286
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->reset(J)V

    .line 1287
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 485
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->resume()V

    .line 486
    const-string v0, "debug.layout"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    .line 488
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->resume()V

    .line 490
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->resume()V

    .line 493
    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->resume()V

    .line 496
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_2

    .line 497
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->resume()V

    .line 499
    :cond_2
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0}, Lmiui/maml/ResourceManager;->resume()V

    .line 500
    return-void
.end method

.method protected resumeAnim(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1279
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 1280
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->resumeAnim(J)V

    .line 1281
    return-void
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;

    .prologue
    .line 1152
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-nez v0, :cond_0

    .line 1153
    const-string v0, "ScreenElementRoot"

    const-string v1, "fail to saveVar, config file is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :goto_0
    return-void

    .line 1157
    :cond_0
    if-nez p2, :cond_1

    .line 1158
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    const-string v1, "null"

    invoke-virtual {v0, p1, v1}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1160
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;D)V

    goto :goto_0
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1165
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-nez v0, :cond_0

    .line 1166
    const-string v0, "ScreenElementRoot"

    const-string v1, "fail to saveVar, config file is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :goto_0
    return-void

    .line 1169
    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public selfFinish()V
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->finish()V

    .line 1185
    return-void
.end method

.method public selfInit()V
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->init()V

    .line 1181
    return-void
.end method

.method public selfPause()V
    .locals 3

    .prologue
    .line 1188
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1189
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1190
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    invoke-virtual {v2}, Lmiui/maml/RendererController;->selfPause()V

    .line 1189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1192
    :cond_0
    return-void
.end method

.method public selfResume()V
    .locals 3

    .prologue
    .line 1195
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1196
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1197
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    invoke-virtual {v2}, Lmiui/maml/RendererController;->selfResume()V

    .line 1196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1199
    :cond_0
    return-void
.end method

.method public setCacheDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mCacheDir:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1325
    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    if-eqz v1, :cond_0

    .line 1326
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    .line 1327
    .local v0, "vars":Lmiui/maml/data/Variables;
    const-string v1, "orientation"

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 1329
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_0

    .line 1344
    .end local v0    # "vars":Lmiui/maml/data/Variables;
    :cond_0
    :goto_0
    return-void

    .line 1331
    .restart local v0    # "vars":Lmiui/maml/data/Variables;
    :pswitch_0
    const-string v1, "raw_screen_width"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1332
    const-string v1, "raw_screen_height"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1333
    const-string v1, "screen_width"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1334
    const-string v1, "screen_height"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 1337
    :pswitch_1
    const-string v1, "raw_screen_width"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1338
    const-string v1, "raw_screen_height"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1339
    const-string v1, "screen_width"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1340
    const-string v1, "screen_height"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 1329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDefaultFramerate(F)V
    .locals 0
    .param p1, "f"    # F

    .prologue
    .line 327
    iput p1, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 328
    return-void
.end method

.method public final setKeepResource(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1039
    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mKeepResource:Z

    .line 1040
    return-void
.end method

.method public setOnExternCommandListener(Lmiui/maml/ScreenElementRoot$OnExternCommandListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    .prologue
    .line 1121
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 1122
    return-void

    .line 1121
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setOnHoverChangeListener(Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;)V
    .locals 0
    .param p1, "l"    # Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;

    .prologue
    .line 1142
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mHoverChangeListener:Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;

    .line 1143
    return-void
.end method

.method public setRenderControllerListener(Lmiui/maml/RendererController$Listener;)V
    .locals 1
    .param p1, "l"    # Lmiui/maml/RendererController$Listener;

    .prologue
    .line 1203
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0, p1}, Lmiui/maml/RendererController;->setListener(Lmiui/maml/RendererController$Listener;)V

    .line 1204
    return-void
.end method

.method public setRenderControllerRenderable(Lmiui/maml/RendererController$IRenderable;)V
    .locals 1
    .param p1, "r"    # Lmiui/maml/RendererController$IRenderable;

    .prologue
    .line 1208
    new-instance v0, Lmiui/maml/SingleRootListener;

    invoke-direct {v0, p0, p1}, Lmiui/maml/SingleRootListener;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RendererController$IRenderable;)V

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->setRenderControllerListener(Lmiui/maml/RendererController$Listener;)V

    .line 1209
    return-void
.end method

.method public setScaleByDensity(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 664
    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mScaleByDensity:Z

    .line 665
    return-void
.end method

.method protected shouldPlaySound()Z
    .locals 1

    .prologue
    .line 1014
    const/4 v0, 0x1

    return v0
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "show"    # Z

    .prologue
    .line 1291
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 1292
    return-void
.end method

.method public showFramerate(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 378
    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mShowFramerate:Z

    .line 379
    return-void
.end method

.method public tick(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 265
    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedReset:Z

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0, p1, p2}, Lmiui/maml/ScreenElementRoot;->reset(J)V

    .line 267
    const-string v0, "init"

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedReset:Z

    .line 270
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmiui/maml/ScreenElementRoot;->doTick(J)V

    .line 271
    return-void
.end method

.method public update(J)J
    .locals 8
    .param p1, "currentTime"    # J

    .prologue
    .line 1217
    const-wide v5, 0x7fffffffffffffffL

    .line 1218
    .local v5, "nextUpdateInterval":J
    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1219
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1220
    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    .line 1221
    .local v1, "c":Lmiui/maml/RendererController;
    invoke-virtual {v1}, Lmiui/maml/RendererController;->isSelfPaused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Lmiui/maml/RendererController;->hasRunnable()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1219
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1224
    :cond_1
    invoke-virtual {v1, p1, p2}, Lmiui/maml/RendererController;->update(J)J

    move-result-wide v3

    .line 1225
    .local v3, "l":J
    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    .line 1226
    move-wide v5, v3

    goto :goto_1

    .line 1228
    .end local v1    # "c":Lmiui/maml/RendererController;
    .end local v3    # "l":J
    :cond_2
    return-wide v5
.end method
